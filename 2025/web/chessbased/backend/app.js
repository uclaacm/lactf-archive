const express = require('express');
const cookieParser = require('cookie-parser');
const path = require('path');
const { openings } = require('./openings.js');

const port = process.env.PORT ?? 3000;
const flag = process.env.FLAG ?? 'lactf{owo_uwu}';
const adminpw = process.env.ADMINPW ?? 'adminpw';
const challdomain = process.env.CHALLDOMAIN ?? 'http://localhost:3000/';

openings.forEach((op) => (op.premium = false));
openings.push({ premium: true, name: 'flag', moves: flag });

const lookup = new Map(openings.map((op) => [op.name, op]));

app = express();

app.use(cookieParser());
app.use('/', express.static(path.join(__dirname, '../frontend/dist')));
app.use(express.json());

app.get('/render', (req, res) => {
  const id = req.query.id;
  const op = lookup.get(id);
  res.send(`
    <p>${op?.name}</p>
    <p>${op?.moves}</p>
  `);
});

app.post('/search', (req, res) => {
  if (req.headers.referer !== challdomain) {
    res.send('only challenge is allowed to make search requests');
    return;
  }
  const q = req.body.q ?? 'n/a';
  const hasPremium = req.cookies.adminpw === adminpw;
  for (const op of openings) {
    if (op.premium && !hasPremium) continue;
    if (op.moves.includes(q) || op.name.includes(q)) {
      return res.redirect(`/render?id=${encodeURIComponent(op.name)}`);
    }
  }
  return res.send('lmao nothing');
});

app.listen(port, () => {
  console.log(`Listening on http://localhost:${port}`);
});
