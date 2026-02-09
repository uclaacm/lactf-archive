const $ = document.querySelector.bind(document);
const $a = document.querySelectorAll.bind(document);

$('.login-form').addEventListener('submit', async (e) => {
  e.preventDefault();
  const r = await fetch('/login', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      username: $('[name=username]').value,
      password: $('[name=password]').value,
    })
  }).then(r => r.json());
  if (r.success) {
    location.href = '/clawcha';
  }
  if (r.err) {
    Swal.fire({
      title: 'Error!',
      text: r.err,
      icon: 'error',
      confirmButtonText: 'Cool'
    })
  }
});
