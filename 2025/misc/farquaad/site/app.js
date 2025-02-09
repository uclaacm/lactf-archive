const express = require('express');
const path = require('path');
const net = require('net');

const pyhost = process.env.PYHOST ?? '127.0.0.1';
const pyport = process.env.PYPORT ?? 5000;
const port = process.env.PORT ?? 3000;

const app = express();
app.use(express.json());
app.use('/', express.static(path.join(__dirname, 'web')));

// runs chall.py with input of code
app.post('/run', (req, res) => {
  const { code } = req.body;

  const client = net.createConnection(pyport, pyhost, () => {
    client.write(`${code}\n`);
  });

  let resolved = false;

  const timeout = setTimeout(() => {
    if (resolved) return;
    resolved = true;
    res.json({ msg: 'there was some error hrm' });
    client.end();
  }, 3000);

  client.on('data', (data) => {
    if (resolved) return;
    resolved = true;
    res.json({ msg: data.toString() });
    client.end();
    clearTimeout(timeout);
  })
});

app.listen(port, () => {
  console.log(`Listening on http://localhost:${port}`);
});
