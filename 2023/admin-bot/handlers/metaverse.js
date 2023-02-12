module.exports = {
    name: "metaverse",
    timeout: 5000,
    async execute(browser, url) {
        const page = await browser.newPage();
        await page.setCookie({
            name: "login",
            value: "admin:" + (process.env.CHALL_METAVERSE_ADMINPW || "placeholder"),
            domain: process.env.CHALL_METAVERSE_DOMAIN || "localhost:8080",
            httpOnly: true,
        });
        await page.goto(url);
        await page.waitForNetworkIdle({
            timeout: 5000,
        });
        await page.close();
    },
};
