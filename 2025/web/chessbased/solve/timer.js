const time = async () => {
  const start = performance.now();
  const normalUrl = 'https://r2dev2.github.io/r2.js/todo.html?owo=uwu';
  await Promise.all([
    fetch(normalUrl, { mode: 'no-cors' }),
    fetch(normalUrl, { mode: 'no-cors' }),
    fetch(normalUrl, { mode: 'no-cors' }),
    fetch(normalUrl, { mode: 'no-cors' }),
    fetch(normalUrl, { mode: 'no-cors' }),
  ]);
  const delta = Math.floor(performance.now() - start);
  console.log(delta);
  console.log('checking opener');
  try {
  if (window.opener) {
    console.log('sennding');
    window.opener.postMessage(JSON.stringify({ delta }));
  }
  } catch (e) { console.error('bad', e) }
};

window.addEventListener('message', time);
