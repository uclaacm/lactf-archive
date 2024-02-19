module.exports = {
    name: "quickstyle",
    timeout: 60000,
    async execute(browser, url) {
        const page = await browser.newPage();
        await page.setCookie({
            name: "token",
            value: process.env.CHALL_QUICKSTYLE_ADMINPW || "placeholder",
            domain: process.env.CHALL_QUICKSTYLE_DOMAIN || "localhost:8080",
            httpOnly: true,
            sameSite: "Lax",
        });
        await page.goto(url);
        await page.waitForNetworkIdle({
            timeout: 60000,
        });
        await page.close();
    },
};
