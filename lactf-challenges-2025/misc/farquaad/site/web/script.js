const $ = q => document.querySelector(q);
const $a = q => document.querySelector(q);

$('.expr-input').addEventListener('keydown', async (e) => {
  if (e.key !== 'Enter') return;
  const code = $('.expr-input').value;

  const resp = await fetch('/run', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ code })
  }).then(r => r.json());

  const cell = document.createElement('code');
  cell.classList.add('cell');
  cell.innerHTML = `&gt;&gt;&gt; ${code}\n${resp.msg}`;
  $('pre').insertBefore(cell, $('code:has(.expr-input)'));
  $('.expr-input').value = '';
  $('.expr-input').scrollIntoView();
});
