const crypto = require('crypto');
const express = require('express');
const cookieParser = require('cookie-parser');
const path = require('path');
const inventory = require('./inventory.js');

const port = process.env.PORT ?? 3000;

inventory.addItem({
  name: 'flag',
  probability: 1e-15, // good luck
  msg: process.env.FLAG ?? 'lactf{test_flag}'
});

const secret = process.env.SECRET || crypto.randomBytes(16).toString('hex');

const users = new Map([
  ['r2uwu2', {
    username: 'r2uwu2',
    password: secret,
    owner: true,
  }],
]);

const app = express();

app.use(cookieParser(secret));
app.use(express.json());

app.use('/', express.static(path.join(__dirname, 'site')));

app.use((req, res, next) => {
  if (typeof req.signedCookies.username === 'string') {
    if (users.has(req.signedCookies.username)) {
      res.locals.user = users.get(req.signedCookies.username);
    }
  }
  next();
});

app.post('/claw', (req, res) => {
  const isOwner = res.locals.user?.owner ?? false;
  const item = inventory.gacha(req.body.item);
  const pulled = (item && (Math.random() < item.probability || isOwner))
    ? item
    : null;

  if (pulled === null) {
    res.json({ success: false, msg: 'better luck next time' });
    return;
  }
  res.json({ success: true, msg: pulled.msg });
});

// never-before seen login-register endpoint 🤩
app.post('/login', (req, res) => {
  const username = req.body.username;
  const password = req.body.password;
  if (typeof username !== 'string' || typeof password !== 'string') {
    res.json({ err: 'please provide a username' });
    return;
  }

  if (!users.has(username)) {
    users.set(username, { username, password, owner: false });
  }

  if (users.get(username).password !== password) {
    res.json({ err: 'incorrect creds' });
    return;
  }

  res
    .cookie('username', username, { signed: true })
    .json({ success: true });
});

app.get('/ping', (req, res) => {
  res.send('pong');
});

app.listen(port, () => {
  const url = `http://localhost:${port}`;
  console.log(`Server listening on ${url}`);
});
