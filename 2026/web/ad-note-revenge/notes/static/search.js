function getConfig() {
    const body = document.body;
    return {
        ADS_URL: body.dataset.adsUrl,
        MIN_IFRAMES: parseInt(body.dataset.minIframes),
        MAX_IFRAMES: parseInt(body.dataset.maxIframes),
        MAX_RESULTS: parseInt(body.dataset.maxResults)
    };
}

function initSearchPage() {
    if (!AdsManager.ensureReferrerPolicy()) return;

    const config = getConfig();
    const resultsGrid = document.getElementById('results-grid');
    const searchInput = document.getElementById('search-input');
    const searchInfo = document.getElementById('search-info');

    const params = new URLSearchParams(window.location.search);
    const query = params.get('search') || '';

    searchInput.value = query;
    if (query) {
        searchInfo.textContent = '';
        searchInfo.appendChild(document.createTextNode('Showing results for: "'));
        const strong = document.createElement('strong');
        strong.textContent = query;
        searchInfo.appendChild(strong);
        searchInfo.appendChild(document.createTextNode('"'));
    } else {
        searchInfo.textContent = 'Search your notes';
    }

    while (resultsGrid.firstChild) {
        resultsGrid.removeChild(resultsGrid.firstChild);
    }

    let notes;
    if (query) {
        notes = NotesApp.searchNotes(query, config.MAX_RESULTS);
    } else {
        notes = NotesApp.getNotesArray(config.MAX_RESULTS);
    }

    const noteIframes = [];
    if (notes.length === 0) {
        const noResults = document.createElement('div');
        noResults.className = 'no-results';
        noResults.textContent = 'No notes found. Try a different search or create a new note!';
        noteIframes.push(noResults);
    } else {
        notes.forEach(note => {
            const iframe = document.createElement('iframe');
            iframe.sandbox = 'allow-scripts';
            iframe.className = 'note-frame';
            iframe.style.background = 'white';
            iframe.srcdoc = trustedPolicy.createHTML(note.content);
            noteIframes.push(iframe);
        });
    }

    const adIframes = AdsManager.getAdIframes(notes.length, config);

    const leftAds = document.getElementById('left-ads');
    const rightAds = document.getElementById('right-ads');
    AdsManager.clearAds(leftAds);
    AdsManager.clearAds(rightAds);

    const appends = [];
    noteIframes.forEach(el => appends.push(() => resultsGrid.appendChild(el)));
    adIframes.left.forEach(iframe => appends.push(() => leftAds.appendChild(iframe)));
    adIframes.right.forEach(iframe => appends.push(() => rightAds.appendChild(iframe)));

    for (let i = appends.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [appends[i], appends[j]] = [appends[j], appends[i]];
    }

    appends.forEach(append => append());
}

window.addEventListener('pageshow', initSearchPage);
