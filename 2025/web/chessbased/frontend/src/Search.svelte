<script>
  import { push, querystring } from 'svelte-spa-router';

  let searchResult = '';

  $: query = new URLSearchParams($querystring).get('q') ?? 'n/a';
  $: inputQuery = query;

  const api = import.meta.env.MODE === 'development'
    ? end => `http://localhost:3000${end}`
    : end => end;

  const search = async (query) => {
    searchResult = await fetch(api('/search'), {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ q: query })
    }).then(r => r.text()).catch(err => err);
  };

  $: search(query);

  const onSubmit = () => {
    push(`/search?q=${encodeURIComponent(inputQuery)}`);
  };
</script>

<main>
  <h1>Chessbased</h1>
  <p>Welcome to chessbased, enter an opening to search in our chess opening explorer!</p>
  <form on:submit|preventDefault={onSubmit}>
    <label>
      Opening:
      <input type="text" bind:value={inputQuery}>
    </label>
    <input type="submit" value="go">
  </form>
  <div class="search-result">
    {@html searchResult}
  </div>
 </main>

