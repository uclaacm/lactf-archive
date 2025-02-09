<script>
  import { push } from 'svelte-spa-router';

  let query = '';

  const onSubmit = () => {
    push(`/search?q=${encodeURIComponent(query)}`);
  };
</script>

<main>
  <h1>Chessbased</h1>
  <p>Welcome to chessbased, enter an opening to search in our chess opening explorer!</p>
  <form on:submit|preventDefault={onSubmit}>
    <label>
      Opening:
      <input type="text" bind:value={query}>
    </label>
    <input type="submit" value="go">
  </form>
 </main>

