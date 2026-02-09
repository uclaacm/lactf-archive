function getConfig() {
    const body = document.body;
    return {
        ADS_URL: body.dataset.adsUrl,
        MIN_IFRAMES: parseInt(body.dataset.minIframes),
        MAX_IFRAMES: parseInt(body.dataset.maxIframes),
        MAX_RESULTS: parseInt(body.dataset.maxResults)
    };
}

function initCreatePage() {
    if (!AdsManager.ensureReferrerPolicy()) return;

    const config = getConfig();
    const createForm = document.getElementById('create-form');

    const adIframes = AdsManager.getAdIframes(0, config);
    AdsManager.appendAdIframes(adIframes);

    createForm.addEventListener('submit', function(e) {
        e.preventDefault();
        const content = document.getElementById('note-content').value;
        if (content) {
            NotesApp.createNote(content);
            window.location.href = '/';
        }
    });
}

window.addEventListener('pageshow', initCreatePage);
