import express from 'express';
import cookieParser from 'cookie-parser';
import { SQL } from 'bun';
import books from './books.json';
import { createMemoryArchive, CompressionLevel } from 'zip-bun';

const app = express();
const port = 3000;

const INITIAL_BALANCE = 1000;

const db = new SQL('sqlite://:memory:');

await db`
CREATE TABLE users (
  username TEXT,
  password_hash TEXT,
  balance INT,

  PRIMARY KEY (username)
);

CREATE TABLE sessions (
  id TEXT,
  userid TEXT,

  PRIMARY KEY (id)
  FOREIGN KEY (userid) REFERENCES users(username)
);

CREATE TABLE books (
  id TEXT,
  title TEXT,
  file TEXT,
  price INT,

  PRIMARY KEY (id)
);

CREATE TABLE cart_items (
  username TEXT,
  book_id TEXT,
  is_sample INT,

  FOREIGN KEY (username) REFERENCES users(username)
  FOREIGN KEY (book_id) REFERENCES books(id)
);
CREATE INDEX idx_cart_items_username ON cart_items(username);
`;
await db`INSERT INTO books ${db(books)}`;

const booksLookup = new Map();
for (const book of books) {
  booksLookup.set(book.id, book);
};

app.use(cookieParser());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const needsAuth = async (req, res, next) => {
  if (typeof req.cookies.session === 'string') {
    const sessions = await db`SELECT userid FROM sessions WHERE id=${req.cookies.session}`;
    if (sessions.length > 0) {
      res.locals.username = sessions[0].userid;
    }
  }

  if (!res.locals.username) {
    return res.redirect('/login');
  }
  next();
};

app.get('/', needsAuth);

app.use(express.static('site'));

app.post('/login', async (req, res) => {
  const { username, password } = req.body;
  if (typeof username !== 'string' || typeof password !== 'string') {
    return res.send('please provide a username/password');
  }
  const potentialUsers = await db`SELECT * FROM users WHERE username=${username}`;
  if (potentialUsers.length === 0) {
    return res.send('user does not exist, try registering first');
  }
  if (!(await Bun.password.verify(password, potentialUsers[0].password_hash))) {
    return res.send('invalid password');
  }
  const sessionId = Bun.randomUUIDv7();
  const session = { id: sessionId, userid: username };
  await db`INSERT INTO sessions ${db(session)}`;
  res.cookie('session', sessionId);
  res.redirect('/');
});

app.post('/register', async (req, res) => {
  const { username, password } = req.body;
  if (typeof username !== 'string' || typeof password !== 'string') {
    return res.send('please provide a username/password');
  }
  const potentialUsers = await db`SELECT * FROM users WHERE username=${username}`;
  if (potentialUsers.length > 0) {
    return res.send('user already exists');
  }
  const password_hash = await Bun.password.hash(password);
  const user = { username, password_hash, balance: INITIAL_BALANCE };
  await db`INSERT INTO users ${db(user)}`;

  const sessionId = Bun.randomUUIDv7();
  const session = { id: sessionId, userid: username };
  await db`INSERT INTO sessions ${db(session)}`;
  res.cookie('session', sessionId);
  res.redirect('/');
});

app.get('/cart', needsAuth, async (req, res) => {
  res.json({
    cart: await db`SELECT book_id, is_sample FROM cart_items WHERE username=${res.locals.username}`,
    balance: (await db`SELECT balance FROM users WHERE username=${res.locals.username}`)[0].balance
  });
});

app.post('/cart/add', needsAuth, async (req, res) => {
  const productsToAdd = req.body.products;
  if (!Array.isArray(productsToAdd) || productsToAdd.length === 0) {
    return res.json({ err: 'please add a product to cart' });
  }

  const [{ balance }] = await db`SELECT balance FROM users WHERE username=${res.locals.username}`;
  const [{ cartSum }] = await db`
    SELECT SUM(books.price) AS cartSum
    FROM cart_items
    JOIN books ON books.id = cart_items.book_id
    WHERE cart_items.username = ${res.locals.username} AND cart_items.is_sample = 0
  `;
  const additionalSum = productsToAdd
    .filter((product) => !+product.is_sample)
    .map((product) => booksLookup.get(product.book_id).price ?? 99999999)
    .reduce((l, r) => l + r, 0);

  if (additionalSum + cartSum > balance) {
    return res.json({ err: 'too poor, have you considered geting more money?' })
  }
  const cartEntries = productsToAdd.map((prod) => ({ ...prod, username: res.locals.username }));
  await db`INSERT INTO cart_items ${db(cartEntries)}`;
  res.json({ remainingBalance: balance - cartSum - additionalSum });
});

app.post('/cart/checkout', needsAuth, async (req, res) => {
  const cart = await db`SELECT * FROM cart_items WHERE username=${res.locals.username}`;
  const [{ balance }] = await db`SELECT balance FROM users WHERE username=${res.locals.username}`;
  const cartSum = cart
    .filter((item) => !+item.is_sample)
    .map((item) => booksLookup.get(item.book_id).price)
    .reduce((l, r) => l + r, 0);

  await db`UPDATE users SET balance=${balance - cartSum} WHERE username = ${res.locals.username}`;
  await db`DELETE FROM cart_items WHERE username=${res.locals.username}`;

  const zipWriter = createMemoryArchive();
  await Promise.all(cart.map(async (item) => {
    const book = booksLookup.get(item.book_id);
    const path = item.is_sample ? book.file.replace(/\.([^.]+)$/, '_sample.$1') : book.file;
    const content = await Bun.file('books/' + path).bytes();
    zipWriter.addFile(path, content, CompressionLevel.NO_COMPRESSION);
  }));
  const zipData = zipWriter.finalizeToMemory();
  res.setHeader('Content-Type', 'application/zip');
  res.setHeader('Content-Disposition', 'attachment; filename="narns-bobles-order.zip"');
  res.send(Buffer.from(zipData));
});

app.listen(port, () => {
  console.log(`Listening on http://localhost:${port}...`);
});
