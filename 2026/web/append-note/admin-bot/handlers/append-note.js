async function sleep(ms) {
    return new Promise((res) => setTimeout(res, ms));
}

module.exports = {
    name: "append-note",
    async execute(browser, url) {
        const page = await browser.newPage();

        let CHALL_HOST;
        if (CHALL_HOST = process.env.CHALL_APPEND_NOTE_HOST) {
        } else if (process.env.INSTANCER_METADATA) {
            CHALL_HOST = JSON.parse(process.env.INSTANCER_METADATA).http.app[4000];
        } else {
            CHALL_HOST = 'localhost';
        }
        const ADMIN_PASSWORD = process.env.CHALL_APPEND_NOTE_ADMIN_PASSWORD || 'password';

        const cookie = {
            name: "admin",
            value: ADMIN_PASSWORD,
            domain: CHALL_HOST,
            httpOnly: true,
            sameSite: "Lax"
        };

        await page.setCookie(cookie);

        // Visits the URL
        await page.goto(url);
        await sleep(60_000);

        await page.close();
    },
};
