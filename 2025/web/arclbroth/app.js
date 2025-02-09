const crypto = require('crypto');
const path = require('path');
const express = require('express');
const cookieParser = require('cookie-parser');
const { init: initDb, sql} = require('secure-sqlite');

const port = process.env.PORT ?? 3000;
const adminpw = process.env.ADMINPW ?? crypto.randomBytes(16).toString('hex');
const flag = process.env.FLAG ?? 'lactf{test_flag_owo}';

initDb(':memory:');
sql`CREATE TABLE users (
  username TEXT PRIMARY KEY,
  password TEXT,
  arcs INT
)`;
sql`CREATE TABLE sessions (id INT PRIMARY KEY, username TEXT)`;
sql`INSERT INTO users VALUES ('admin', ${adminpw}, 100)`;
console.log(sql`SELECT * FROM users`);

const app = express();

app.use('/', express.static(path.join(__dirname, 'site')));

app.use(cookieParser());
app.use(express.json());

app.use((req, res, next) => {
  const sessId = parseInt(req.cookies.session);
  if (!isNaN(sessId)) {
    const sessions = sql`SELECT username FROM sessions WHERE id=${sessId}`;
    if (sessions.length > 0) {
      res.locals.user = sql`SELECT * FROM users WHERE username=${sessions[0].username}`[0];
    }
  }
  next();
});

app.post('/register', (req, res) => {
  const username = req.body.username;
  const password = req.body.password;

  if (!username || typeof username !== 'string') {
    res.status(400).json({ err: 'provide a username owo' });
    return;
  }

  if (!password || typeof password !== 'string') {
    res.status(400).json({ err: 'provide a password uwu' });
    return;
  }

  const existing = sql`SELECT * FROM users WHERE username=${username}`;
  if (existing.length > 0) {
    res.status(400).json({ err: 'user already exists' });
    return;
  }

  sql`INSERT INTO users VALUES (${username}, ${password}, 10)`;
  const id = crypto.randomInt(281474976710655);
  sql`INSERT INTO sessions VALUES (${id}, ${username})`;
  res
    .cookie('session', id)
    .json({ success: true });
});

app.post('/login', (req, res) => {
  const username = req.body.username;
  const password = req.body.password;

  if (!username || typeof username !== 'string') {
    res.status(400).json({ err: 'provide a username owo' });
    return;
  }

  if (!password || typeof password !== 'string') {
    res.status(400).json({ err: 'provide a password uwu' });
    return;
  }

  const existing = sql`SELECT * FROM users WHERE username=${username}`;
  if (existing.length == 0 || existing[0].password !== password) {
    res.status(400).json({ err: 'invalid login' });
    return;
  }

  const id = crypto.randomInt(281474976710655);
  sql`INSERT INTO sessions VALUES (${id}, ${username})`;
  res
    .cookie('session', id)
    .json({ success: true });
});

app.post('/brew', (req, res) => {
  if (!res.locals.user) {
    res.status(400).json({ err: 'please login' });
    return;
  }

  const { arcs, username } = res.locals.user;

  if (arcs < 2) {
    res.json({ broth: 'no-arcs', arcs });
  } else if (arcs < 50) {
    sql`UPDATE users SET arcs=${arcs - 2} WHERE username=${username}`;
    res.json({ broth: 'standard', arcs: arcs - 2 });
  } else {
    sql`UPDATE users SET arcs=${arcs - 50} WHERE username=${username}`;
    res.json({ broth: flag, arcs: arcs - 50 });
  }
});

app.post('/replenish', (req, res) => {
  if (!res.locals.user) {
    res.status(400).json({ err: 'please login' });
    return;
  }

  const { username } = res.locals.user;
  const arcs = username === 'admin' ? 100 : 10
  sql`UPDATE users SET arcs=${arcs}`;
  res.json({ success: true, arcs });
});

app.get('/info', (req, res) => {
  res.json(res.locals.user);
});

app.listen(port, () => {
  console.log(`http://0.0.0.0:${port}`);
});
