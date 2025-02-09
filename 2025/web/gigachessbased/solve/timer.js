const fetchChain = (url, depth) => depth == 0
  ? new Promise(res => res())
  : fetch(url, { mode: 'no-cors' }).then(() => fetchChain(url, depth - 1));

const time = async () => {
  const start = performance.now();
  const normalUrl = 'https://r2dev2.github.io/r2.js/todo.html?owo=uwu';
  for (let i = 0; i < 1; ++i) {
  await Promise.all([
    fetchChain(normalUrl, 2),
    fetchChain(normalUrl, 2),
    // fetchChain(normalUrl, 2),
    // fetchChain(normalUrl, 2),
    // fetchChain(normalUrl, 2),
  ]);
  }
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
