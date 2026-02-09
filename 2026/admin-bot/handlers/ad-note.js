async function sleep(ms) {
    return new Promise((res) => setTimeout(res, ms));
}

module.exports = {
    name: "ad-note",
    async execute(browser, url) {
        const page = await browser.newPage();

        const CHALL_URL = process.env.CHALL_AD_NOTE_URL || 'http://localhost:4000';
        const ADMIN_PASSWORD = process.env.CHALL_AD_NOTE_ADMIN_PASSWORD || 'password';

        await page.setCookie({
            name: "admin",
            value: ADMIN_PASSWORD,
            domain: new URL(CHALL_URL).hostname,
            httpOnly: true,
            sameSite: "Lax",
        });

        // Acquire nonce
        await page.goto(`${CHALL_URL}/nonce`);
        const element = await page.waitForSelector('#nonce');
        const nonce = await element.evaluate(el => el.textContent);

        // Creates a secret note.
        await page.goto(`${CHALL_URL}/create`);
        await page.waitForSelector('#note-content');
        await page.type('#note-content', nonce);
        await page.click('button[type=submit]');
        await page.waitForNavigation();

        // Visits the URL
        await page.goto(url);
        await sleep(30_000);

        // Delete the nonce
        await page.goto(`${CHALL_URL}/delete?nonce=${nonce}`);

        await page.close();
    },
};
