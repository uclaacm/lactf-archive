const $ = document.querySelector.bind(document);
const $a = document.querySelectorAll.bind(document);

const setOpenMole = (i) => {
  $a('.mole').forEach(m => m.classList.remove('up'));
  $a('.mole')[i].classList.add('up');
};

const bonkMole = async (i) => {
  $a('.mole')[i].classList.remove('up');

  const resp = await fetch('/whack', { method: 'POST' }).then(r => r.json());

  // login if not logged in
  if (resp.err) {
    location.href = '/';
    return;
  }

  if (resp.win) {
    alert('You won! No more moles.');
    return;
  }

  await new Promise(res => setTimeout(res, 500));
  setOpenMole(resp.mole);
};

$a('.mole').forEach((mole, i) => {
  mole.addEventListener('click', () => {
    if (!mole.classList.contains('up')) return;
    bonkMole(i);
  });
});

setOpenMole(2);

const hammer = $('.hammer');
window.addEventListener('mousemove', (e) => {
  hammer.style = `--x: ${e.clientX}px; --y: ${e.clientY}px`;
});

window.addEventListener('mousedown', () => {
  hammer.classList.add('bonkers');
});

window.addEventListener('mouseup', () => {
  hammer.classList.remove('bonkers');
});
