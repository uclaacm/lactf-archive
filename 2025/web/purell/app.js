const express = require('express');
const cookieParer = require('cookie-parser');
const path = require('path');
const fs = require('fs');

const port = process.env.PORT ?? 3000;
const testflag = (n) => `purell-token{xss_guru_${n}}`;

const app = express();

app.use(cookieParer());
app.use('/', express.static(path.join(__dirname, 'site')));

const levels = [
  {
    id: 'start',
    name: 'A Friendly Warmup',
    flag: 'purell-token{gu4u_of_exf1l}',
    flagpart: 'lactf{1_4m_z3_',
    adminpw: 'JNkhD01H4SC8EPxCnuXSS5kguNuzHwRU',
    sanitizer: (html) => html
  },
  {
    id: 'no-scr7pt-owo',
    name: 'no scripts allowed fr fr',
    flag: 'purell-token{scr7ptl355_m3n4c3}',
    flagpart: 'b3s7_x40ss_',
    adminpw: 'P2zEJmfzyE5m8gGALQMmadN7w8pKnHIO',
    sanitizer: (html) => html.includes('script') || html.length > 150 ? 'nuh-uh' : html
  },
  {
    id: 'no-more-xss',
    name: 'NO MORE XSS PLEASE',
    flag: 'purell-token{XSS_IS_UNSTOPPABLE_RAHHHH}',
    flagpart: 'h4nd_g34m_',
    adminpw: 'uKqLKimf6X58V25tlMk8CG2vtkEugp73',
    sanitizer: (html) => html.includes('script') || html.includes('on') || html.length > 150 ? 'nuh-uh' : html
  },
  {
    id: 'tricky-lil-hacker',
    name: 'ok now yall are cooked, no more scripts or on',
    flag: 'purell-token{a_l7l_b7t_0f_m00t4t70n}',
    adminpw: 'wLncNJ07Edzqjrqr2BtX7s1Y5GguQ7Co',
    flagpart: '4cr0ss_411_t1m3',
    sanitizer: (html) => html.toLowerCase().replaceAll('script', '').replaceAll('on', '')
  },
  {
    id: 'sneeki-breeki',
    name: 'screw it no more html for yall',
    flag: 'purell-token{html_7s_m4lf0rmed_bu7_no7_u}',
    flagpart: '_4nd_z_',
    adminpw: 'ZUpJjC9rC2uK96MxdCyJrJgeVmPcSrz2',
    sanitizer: (html) =>
      html
        .toLowerCase().replaceAll('script', '').replaceAll('on', '')
        .replaceAll('>', '')
  },
  {
    id: 'spaceless',
    name: 'no whitespace, no nothing',
    flag: 'purell-token{wh3n_th3_imp0st4_i5_5u5_bu7_th3r35_n0_sp4c3}',
    flagpart: 'un1v3rs3',
    adminpw: 'mVeShfh2FAs3ZALlim29Bsw7254cLFGX',
    sanitizer: (html) =>
      html
        .toLowerCase().replaceAll('script', '').replaceAll('on', '')
        .replaceAll('>', '')
        .replace(/\s/g, '')
  },
  {
    id: 'parentheless',
    name: 'no parenthesis :megamind:',
    flag: 'purell-token{y0u_4r3_th3_0n3_wh0_c4ll5}',
    flagpart: '_1nf3c71ng_3v34y_1}',
    adminpw: 'QaaIvQ14KFLvFNfYO410HAyECYnQCkCS',
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
    adminpw: '73Fl9QlRarJG5AqLVe7wsfdS5WNzR17S',
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
