const $ = q => document.querySelector(q);
const $a = q => document.querySelectorAll(q);

const postJson = (url, obj) => fetch(url, {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify(obj)
}).then(r => r.json());

$('form').addEventListener('submit', e => e.preventDefault());

$('.login').addEventListener('click', async () => {
  const username = $('input[name=username]').value;
  const password = $('input[name=password]').value;

  const resp = await postJson('/login', { username, password });
  if (resp.err) {
    Swal.fire({
      title: 'Error!',
      text: resp.err,
      icon: 'error'
    });
    return;
  }
  location.href = '/game';
});

$('.register').addEventListener('click', async () => {
  const username = $('input[name=username]').value;
  const password = $('input[name=password]').value;

  const resp = await postJson('/register', { username, password });
  if (resp.err) {
    alert(`Err: ${resp.err}`);
    return;
  }
  location.href = '/game';
});
