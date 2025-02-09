<script>
  import Router from 'svelte-spa-router';
  import Index from './Index.svelte';
  import Search from './Search.svelte';

  const routes = {
    '/': Index,
    '/search': Search
  };
</script>

<body>
  <Router {routes} />
</body>
