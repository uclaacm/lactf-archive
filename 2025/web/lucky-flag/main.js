const $ = q => document.querySelector(q);
const $a = q => document.querySelectorAll(q);

const boxes = $a('.box');
let flagbox = boxes[Math.floor(Math.random() * boxes.length)];

for (const box of boxes) {
  if (box === flagbox) {
    box.onclick = () => {
      let enc = `"\\u000e\\u0003\\u0001\\u0016\\u0004\\u0019\\u0015V\\u0011=\\u000bU=\\u000e\\u0017\\u0001\\t=R\\u0010=\\u0011\\t\\u000bSS\\u001f"`;
      for (let i = 0; i < enc.length; ++i) {
        try {
          enc = JSON.parse(enc);
        } catch (e) { }
      }
      let rw = [];
      for (const e of enc) {
        rw['\x70us\x68'](e['\x63har\x43ode\x41t'](0) ^ 0x62);
      }
      const x = rw['\x6dap'](x => String['\x66rom\x43har\x43ode'](x));
      alert(`Congrats ${x['\x6aoin']('')}`);
    };
    flagbox = null;
  } else {
    box.onclick = () => alert('no flag here');
  }
};
