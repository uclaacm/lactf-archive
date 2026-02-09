const books = [
  {"id":"a3e33c2505a19d18","title":"The Part-Time Parliament","file":"part-time-parliament.pdf","price":"10"},
  {"id":"509d8c2a80e495fb","title":"The End of Cryptography","file":"end_of_cryptography.txt","price":20},
  {"id":"f4838abd731caf29","title":"AVDestroyer Origin Lore","file":"avd_origin_lore.txt","price":40},
  {"id":"2a16e349fb9045fa","title":"Flag","file":"flag.txt","price":1000000}
];

const balanceEl = document.getElementById('balance');
const cartList = document.getElementById('cart-list');
const booksContainer = document.getElementById('books-container');
const checkoutForm = document.getElementById('checkout-form');

// Fetch /cart on load
async function loadCart() {
  try {
    const res = await fetch('/cart');
    const data = await res.json();
    balanceEl.textContent = data.balance;

    cartList.innerHTML = '';
    data.cart.forEach(item => {
      const book = books.find(b => b.id === item.book_id);
      if (book) {
        const li = document.createElement('li');
        li.textContent = `${book.title} ${item.is_sample ? '(Sample)' : ''}`;
        cartList.appendChild(li);
      }
    });
  } catch (err) {
    console.error('Error loading cart', err);
  }
}

// Render book buttons
function renderBooks() {
  books.forEach(book => {
    const card = document.createElement('div');
    card.className = 'book-card';

    card.innerHTML = `
      <img src="/thumbnails/${book.id}.webp" alt="${book.title}">
      <div>${book.title}</div>
      <div>$${book.price}</div>
      <button data-id="${book.id}">Add Sample</button>
      <button data-id="${book.id}">Add to Cart</button>
    `;

    booksContainer.appendChild(card);
  });
}

// Add to cart
booksContainer.addEventListener('click', async (e) => {
  if (e.target.tagName === 'BUTTON') {
    const bookId = e.target.getAttribute('data-id');
    const isSample = e.target.textContent.toLowerCase().includes('sample');
    try {
      const res = await fetch('/cart/add', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ products: [{ book_id: bookId, is_sample: isSample }] })
      });
      const data = await res.json();
      if (data.err) {
        alert(`Error: ${data.err}`);
      } else {
        balanceEl.textContent = data.remainingBalance;
        loadCart();
      }
    } catch (err) {
      console.error('Error adding to cart', err);
    }
  }
});

checkoutForm.addEventListener('submit', async () => {
  const start = Date.now();
  while (Date.now() - start < 2000) {
    await new Promise(res => setTimeout(res, 500));
    await loadCart();
  }
});

// Initialize
renderBooks();
loadCart();
