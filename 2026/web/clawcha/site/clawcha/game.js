const $ = document.querySelector.bind(document);
const $a = document.querySelectorAll.bind(document);

// from https://github.com/r2dev2/r2.js/blob/master/r2.js
const useState = value => {
  const subscribers = new Map();
  let num = 0;
  return [
    function get() { return value; },
    function set(newValue) {
      if (newValue == value) return;
      const oldValue = value;
      value = newValue;
      subscribers.forEach(cb => cb(value, oldValue));
    },
    function subscribe(cb, invoke=true) {
      const id = num++;
      subscribers.set(id, cb);
      if (invoke) cb(value, value);
      return () => subscribers.delete(id);
    }
  ]
};

// create the gacha items
const items = new Map(); // name => { entity: entity, store: coords[] }
{
  let i = 0;
  for (const img of $a('a-assets.items img')) {
    const item = img.getAttribute('id');
    const entity = document.createElement('a-entity');
    entity.setAttribute('id', `i-${item}`);
    entity.setAttribute('geometry', 'primitive: box');
    entity.setAttribute('material', `src: #${item}`);

    const initCoords = i < 5
      ? [i * 1.3 - 2.7, 2.5, -6]
      : [(i % 5) * 1.3 - 2, 2.5, -4.7];

    items.set(item, {
      entity,
      store: useState(initCoords)
    });

    // subscribe to coords changes
    items.get(item).store[2](($coords) => {
      entity.setAttribute('position', $coords.map(x => `${x}`).join(' '));
    });

    $('a-scene').appendChild(entity);
    i++;
  };
}

const offsetLimits = { min: [ -2.9, -0.77 ], max: [ 2.9, .77 ] };
const [ clawRaised, setClawRaised, _ ] = useState(true);
const [ clawBusy, setClawBusy, subClawBusy ] = useState(false);
const [ clawProgress, setClawProgress, subClawProgress ] = useState(0);
const [ clawCylinder, setClawCylinder, subClawCylinder ] = useState({
  offset: [0, 0],
  position: [0, 7.5, -5.5],
  height: 1
});
const [ claw, setClaw, subClaw ] = useState({
  offset: [0, 0],
  top: {
    left: {
      posY: 6.64,
    },
    right: {
      posY: 6.64,
    }
  },
  bottom: {
    left: {
      position: [-0.72686, 5.764, -5.5],
      rotation: -75
    }
  }
});

const onKeyDown = (key, el, cb) => {
  window.addEventListener('keydown', (e) => {
    if (e.key === key) return cb();
  });
  if (el) {
    el.addEventListener('mousedown', cb);
  }
};

const onKeyUp = (key, els, cb) => {
  window.addEventListener('keyup', (e) => {
    if (key.includes(e.key)) return cb();
  });
  els.forEach((el) => {
    el.addEventListener('mouseup', cb);
  });
};

onKeyUp(' u', $a('#t-claw'), () => clawRaised() ? lowerClaw() : raiseClaw());
onKeyDown('i', $('#t-up'), () => moveClaw(0, -1));
onKeyDown('k', $('#t-down'), () => moveClaw(0, 1));
onKeyDown('j', $('#t-left'), () => moveClaw(-1, 0));
onKeyDown('l', $('#t-right'), () => moveClaw(1, 0));
onKeyUp('ijkl', $a('#t-up, #t-down, #t-left, #t-right'), () => stopClawMove());

// control buttons
$a('[id^=t-]').forEach((el) => {
  el.addEventListener('mouseenter', () => {
    el.setAttribute('color', '#dfa8e4');
  })
  el.addEventListener('mouseleave', () => {
    el.setAttribute('color', 'white');
  })
  el.addEventListener('mousedown', () => {
    el.getAttribute('position').y -= 0.05;
  });
  el.addEventListener('mouseup', () => {
    el.getAttribute('position').y += 0.05;
  });
});

const stopClawMove = () => {
  setClawBusy(false);
};

const clamp = (x, min, max) => Math.min(Math.max(x, min), max);

const closestItem = () => {
  const { offset, position  } = clawCylinder();
  const x = offset[0] + position[0];
  const y = offset[1] + position[2];

  for (const [ item, { store } ] of items.entries()) {
    const [ ix, _, iy] = store[0]();
    if (Math.abs(ix - x) < 0.5 && Math.abs(iy - y) < 0.5) {
      return item;
    }
  }
};

const raiseItem = async () => {
  const itemName = closestItem();
  if (!itemName) return;
  const { store: itemPosition } = items.get(itemName);

  const unsub = subClawCylinder(($cylinder) => {
    const posY = $cylinder.position[1] - $cylinder.height / 2 - 1;
    const position = [...itemPosition[0]()];
    position[0] = $cylinder.position[0] + $cylinder.offset[0];
    position[1] = posY;
    itemPosition[1](position);
  });

  const unsub2 = subClawBusy(($busy) => {
    if ($busy) return;

    // reached top
    unsub();
    unsub2();
  })

  const raiseStart = Date.now();

  const pull = await fetch('/claw', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ item: itemName })
  }).then(r => r.json());

  if (pull.success) {
    const unsub = subClawBusy(($busy) => {
      if ($busy) return;
      unsub();
      Swal.fire({
        title: `${itemName} acquired!`,
        text: pull.msg,
        imageUrl: $(`#${itemName}`).src,
        timer: itemName === 'flag' ? 10000000 : 5000,
        timerProgressBar: true,
      });
      dropItem(itemName);
    });
    return;
  }
  
  // drop at least 3s into raising
  await new Promise((res) => setTimeout(res, Math.max(0, 3000 - Date.now() + raiseStart)));

  // pull failed => drop item
  unsub();
  unsub2();

  dropItem(itemName);
};

const dropItem = async (itemName) => {
  const { store: itemPosition } = items.get(itemName);

  // drop to y=2.5
  const start = Date.now()
  let prev = start;
  while (itemPosition[0]()[1] > 2.5) {
    await new Promise((res) => setTimeout(res, 12));

    const now = Date.now();
    const dt = now - prev;
    const t = now - start;
    const v = 2e-5 * t;

    const position = [...itemPosition[0]()];
    position[1] = Math.max(2.5, position[1] - v * dt);
    itemPosition[1](position);

    prev = now;
  }
};

const moveClaw = (dx, dy) => {
  if (clawBusy() || !clawRaised()) return;
  setClawBusy(true);

  const interval = setInterval(() => {
    const offset = [...clawCylinder().offset];
    const [ xmin, ymin ] = offsetLimits.min;
    const [ xmax, ymax ] = offsetLimits.max;
    offset[0] = clamp(offset[0] + dx / 40, xmin, xmax);
    offset[1] = clamp(offset[1] + dy / 40, ymin, ymax);
    setClawCylinder({ ...clawCylinder(), offset });
    setClaw({ ...claw(), offset });
  }, 12);

  const unsub = subClawBusy($busy => $busy || (clearInterval(interval) && unsub()));
};

const lowerClaw = () => {
  if (clawBusy() || clawProgress() > 0.6) return;
  setClawBusy(true);
  setClawRaised(false);

  // go 80% down
  const startProgress = clawProgress();
  const endProgress = 0.8;

  const start = Date.now();
  const end = Date.now() + 5000;
  const interval = setInterval(() => {
    const progress = (Date.now() - start) / (end - start);

    if (progress > 1) {
      clearInterval(interval);
      setClawBusy(false);
      return;
    }

    setClawProgress(startProgress + (endProgress - startProgress) * progress);
  }, 12);
};

const raiseClaw = () => {
  if (clawBusy() || clawProgress() < 0.1) return;
  setClawBusy(true);

  raiseItem();

  // go all the way up
  const startProgress = clawProgress();
  const endProgress = 0;

  const start = Date.now();
  const end = Date.now() + 5000;
  const interval = setInterval(() => {
    const progress = (Date.now() - start) / (end - start);

    if (progress > 1) {
      clearInterval(interval);
      setClawBusy(false);
      setClawRaised(true);
      return;
    }

    setClawProgress(startProgress + (endProgress - startProgress) * progress);
  }, 12);
};

// render the state
//
subClawProgress(($progress) => {
  // up position:
  // <a-cylinder position="0 7.5 -5.5" radius="0.05" height="1" color="#FFC65D"></a-cylinder>
  //
  // down position:
  // <a-cylinder position="0 5 -5.5" radius="0.05" height="6" color="#FFC65D"></a-cylinder>

  // cylinder
  {
    const posY = 7.5 + (5 - 7.5) * $progress;
    const height = 1 + (6 - 1) * $progress;
    setClawCylinder({ ...clawCylinder(), position: [0, posY, -5.5], height });
  }

  // claw top
  {
    // 1.77 is through binary searching for the value lol
    const posY = 6.64 + (1.77 - 6.64) * $progress;
    setClaw({ ...claw(), top: { left: { posY }, right: { posY } } });
  }

  // claw bottom left
  {
    // from: position: [-0.72686, 5.764, -5.5], rotation: -75
    // to: position: [-0.41985, 5.92327, -5.5], rotation: -40
    const fpos = [-0.72686, 5.764, -5.5];
    const topos = [-0.41985, 1, -5.5];
    const position = [0, 1, 2].map((i) => fpos[i] + (topos[i] - fpos[i]) * $progress);
    const rotation = -75 + (-40 + 75) * $progress;
    setClaw({ ...claw(), bottom: { left: { position, rotation } }});
  }
});

subClawCylinder(($cc) => {
  const pos = [...$cc.position];
  pos[0] += $cc.offset[0];
  pos[2] += $cc.offset[1];

  $('#clawcylinder').setAttribute('position', pos.map(x => `${x}`).join(' '));
  $('#clawcylinder').setAttribute('height', `${$cc.height}`);
});

subClaw(($claw) => {
  const [ x, y ] = $claw.offset;
  const topLeftPosition = `${x - 0.45} ${$claw.top.left.posY} ${y - 5.5}`;
  const topRightPosition = `${x + 0.45} ${$claw.top.left.posY} ${y - 5.5}`;

  const [ blx, bly, blz ] = $claw.bottom.left.position;
  const bottomLeftPosition = `${x + blx} ${bly} ${y + blz}`;
  const bottomLeftRotation = `0 0 ${$claw.bottom.left.rotation}`;

  const bottomRightPosition = `${x - blx} ${bly} ${y + blz}`;
  const bottomRightRotation = `0 0 ${-$claw.bottom.left.rotation}`;

  $('#c-tl').setAttribute('position', topLeftPosition);
  $('#c-tr').setAttribute('position', topRightPosition);
  $('#c-bl').setAttribute('position', bottomLeftPosition);
  $('#c-bl').setAttribute('rotation', bottomLeftRotation);
  $('#c-br').setAttribute('position', bottomRightPosition);
  $('#c-br').setAttribute('rotation', bottomRightRotation);
});
