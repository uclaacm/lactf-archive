const $ = q => document.querySelector(q);
const $a = q => document.querySelectorAll(q);

const useState = value => {
  const subscribers = new Map();
  let num = 0;
  function state() { return value; }
  state.set = function set(newValue) {
    if (newValue == value) return;
    const oldValue = value;
    value = newValue;
    subscribers.forEach(cb => cb(value, oldValue));
  }
  state.subscribe = function subscribe(cb, invoke=true) {
    const id = num++;
    subscribers.set(id, cb);
    if (invoke) cb(value, value);
    return () => subscribers.delete(id);
  }
  return state;
};

const arcs = [];

const spawnArc = (x, y) => {
  const arc = useState({ x, y });
  const cleanup = [];

  const el = document.createElement('img');
  el.src = '/img/bulrboo.png';
  el.classList.add('arc');
  cleanup.push(arc.subscribe(($arc) => {
    el.style.left = `${$arc.x}px`;
    el.style.top = `${$arc.y}px`;
  }));

  const interval = setInterval(() => {
    const dx = Math.floor(-100 + Math.random() * 200);
    const dy = Math.floor(-100 + Math.random() * 200);
    const { x, y } = arc();
    const newx = Math.max(0, Math.min(1000, x + dx));
    const newy = Math.max(20, Math.min(400, y + dy));
    arc.set({ x: newx, y: newy });
  }, 5000);
  cleanup.push(() => clearInterval(interval));
  arc.brew = () => {
    clearInterval(interval);
    const pot = $('.cauldron').getBoundingClientRect();
    const newx = pot.x + pot.width / 2 - 50;
    const newy = pot.y + pot.height / 5 - 100;
    el.classList.add('brewing');
    arc.set({ x: newx, y: newy });
    arc.kill();
  };

  $('.game .scene').appendChild(el);
  arc.kill = () => cleanup.forEach(cb => cb());
  return arc;
};

fetch('/info').then(r => r.json()).catch(() => ({})).then((resp) => {
  if (!('arcs' in resp)) {
    location.href = '/';
    return;
  }

  for (let i = 0; i < resp.arcs; ++i) {
    arcs.push(spawnArc(i * 60, 10));
  }
});

$('button.replenish').addEventListener('click', async () => {
  const resp = await fetch('/replenish', { method: 'POST' }).then(r => r.json());
  if (resp.success) {
    for (let i = arcs.length; i < resp.arcs; ++i) {
      arcs.push(spawnArc(i * 60, 10));
    }
  }
});

$('button.brew').addEventListener('click', async () => {
  const resp = await fetch('/brew', { method: 'POST' }).then(r => r.json());
  if (!resp.err) {
    if (resp.broth === 'no-arcs') {
      Swal.fire({
        title: 'Oh nyo',
        html: `
        <p>no arcs?</p>
        <img width="300px" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fa.pinatafarm.com%2F320x349%2F4889604c7b%2Fmegamind-no-b.jpg%2Fm%2F522x0&f=1&nofb=1&ipt=99d58473b3c21ba52e2fe483adfbd0ca069ccd8e9c9ca98405a682dd4069097b&ipo=images" alt="megamind">
        `,
        icon: 'question'
      });
      return;
    }
    for (let i = arcs.length; i > resp.arcs; --i) {
      const arc = arcs.pop();
      arc.brew();
    }
    await new Promise(res => setTimeout(res, 2000));
    Swal.fire({
      title: 'Yum!',
      text: `+1 ${resp.broth} broth`,
      icon: 'success'
    });
  }
});
