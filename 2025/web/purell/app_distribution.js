const express = require('express');
const cookieParer = require('cookie-parser');
const path = require('path');
const fs = require('fs');

const port = process.env.PORT ?? 3000;
const testflag = (n) => `purell-token{xss_guru_${n}}`;

const app = express();

app.use(cookieParer());
app.use('/', express.static(path.join(__dirname, 'site')));


// id, flag, flagpart, and adminpw have been changed from the actual challenge
const levels = [
  {
    id: 'start',
    name: 'A Friendly Warmup',
    flag: 'TOKEN1',
    flagpart: 'hi',
    adminpw: 'ADMIN1',
    sanitizer: (html) => html
  },
  {
    id: 'two',
    name: 'no scripts allowed fr fr',
    flag: 'TOKEN2',
    flagpart: 'hi',
    adminpw: 'ADMIN2',
    sanitizer: (html) => html.includes('script') || html.length > 150 ? 'nuh-uh' : html
  },
  {
    id: 'three',
    name: 'NO MORE XSS PLEASE',
    flag: 'TOKEN3',
    flagpart: 'hi',
    adminpw: 'ADMIN3',
    sanitizer: (html) => html.includes('script') || html.includes('on') || html.length > 150 ? 'nuh-uh' : html
  },
  {
    id: 'four',
    name: 'ok now yall are cooked, no more scripts or on',
    flag: 'TOKEN4',
    adminpw: 'ADMIN4',
    flagpart: 'hi',
    sanitizer: (html) => html.toLowerCase().replaceAll('script', '').replaceAll('on', '')
  },
  {
    id: 'five',
    name: 'screw it no more html for yall',
    flag: 'TOKEN5',
    flagpart: 'hi',
    adminpw: 'ADMIN5',
    sanitizer: (html) =>
      html
        .toLowerCase().replaceAll('script', '').replaceAll('on', '')
        .replaceAll('>', '')
  },
  {
    id: 'six',
    name: 'no whitespace, no nothing',
    flag: 'TOKEN6',
    flagpart: 'hi',
    adminpw: 'ADMIN6',
    sanitizer: (html) =>
      html
        .toLowerCase().replaceAll('script', '').replaceAll('on', '')
        .replaceAll('>', '')
        .replace(/\s/g, '')
  },
  {
    id: 'seven',
    name: 'no parenthesis :megamind:',
    flag: 'TOKEN7',
    flagpart: 'hi',
    adminpw: 'ADMIN7',
    sanitizer: (html) =>
      html
        .toLowerCase().replaceAll('script', '').replaceAll('on', '')
        .replaceAll('>', '')
        .replace(/\s/g, '')
        .replace(/[()]/g, '')
  },
  {
    id: 'end',
    name: 'Congrats on receiving all the flags parts! Submit for points.',
    flag: '',
    adminpw: 'ADMIN8',
    flagpart: 'hi',
    sanitizer: (html) => ''
  }
];

const lmap = new Map(levels.map((l, i) => ([l.id, { n: i, ...l }])));
console.log(new Map(levels.map((l, i) => ([l.id, l.adminpw]))))
app.get('/level/:levelid', (req, res) => {
  const level = lmap.get(req.params.levelid);
  const html = req.query.html ?? '';

  if (!level) {
    res.redirect('/level/start');
    return;
  }
  const isAdmin = req.cookies.adminpw === level.adminpw;
  if (!isAdmin && req.cookies.adminpw) {
    res.clearCookie("adminpw");
    res.send("Adminbot visited wrong endpoint. If you are not the admin bot, reload the page.")
    return;
  }
  const template = fs.readFileSync(path.join(__dirname, 'site/level.html')).toString();
  const resp = template
    .replaceAll('$level$', level.n.toString())
    .replaceAll('$flag$', isAdmin ? level.flag : testflag(level.n))
    .replaceAll('$sanitizer$', level.sanitizer.toString())
    .replaceAll('$name$', level.name)
    .replaceAll('$html$', level.sanitizer(html));
  res.send(resp);
});

app.get('/flag', (req, res) => {
  const flag = req.query.flag;

  if (flag.includes('xss_guru')) {
    res.send('You seem to have submitted the testing token, please send a link to the admin bot and submit the real token instead');
    return;
  }

  for (let i = 0; i < levels.length; ++i) {
    const level = levels[i];
    if (level.flag === flag) {
      const template = fs.readFileSync(path.join(__dirname, 'site/nextlevel.html')).toString();
      res.send(template.replaceAll('$redir$', `/level/${levels[i + 1].id}`).replaceAll('$part$', `${i + 1}`).replaceAll("$flagpart$", `${levels[i].flagpart}`));
      return;
    }
  }
  res.send('Incorrect token');
});

app.listen(port, () => {
  console.log(`Listening on http://localhost:${port}`);
});
