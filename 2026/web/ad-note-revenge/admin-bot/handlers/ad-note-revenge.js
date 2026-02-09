async function sleep(ms) {
    return new Promise((res) => setTimeout(res, ms));
}

module.exports = {
    name: "ad-note-revenge",
    async execute(browser, url) {
        const page = await browser.newPage();

        let CHALL_HOST;
        let CHALL_URL;
        if (CHALL_HOST = process.env.CHALL_AD_NOTE_REVENGE_HOST) {
        } else if (process.env.INSTANCER_METADATA) {
            CHALL_HOST = JSON.parse(process.env.INSTANCER_METADATA).http.notes[4000];
            CHALL_URL = `https://${CHALL_HOST}`;
        } else {
            CHALL_HOST = 'localhost';
            CHALL_URL = 'http://localhost:4000';
        }

        const ADMIN_PASSWORD = process.env.CHALL_AD_NOTE_REVENGE_ADMIN_PASSWORD || 'password';

        await page.setCookie({
            name: "admin",
            value: ADMIN_PASSWORD,
            domain: CHALL_HOST,
            httpOnly: true,
            sameSite: "Lax",
        });

        // Acquire nonce
        await page.goto(`${CHALL_URL}/nonce`);
        const element = await page.waitForSelector('p');
        const nonce = await element.evaluate(el => el.textContent);
        if (nonce === '1 per 1 minute') {
            return {error: 'Ratelimited on /nonce endpoint'};
        }

        // Creates a secret note.
        await page.goto(`${CHALL_URL}/create`);
        await page.waitForSelector('#note-content');
        await page.type('#note-content', nonce);
        await page.click('button[type=submit]');
        await page.waitForNavigation();

        // Visits the URL
        await page.goto(url);
        await sleep(60_000);

        // Delete the nonce
        await page.goto(`${CHALL_URL}/delete?nonce=${nonce}`);

        await page.close();
    },
};
