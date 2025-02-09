module.exports = {
    name: "mavs-fan",
    async execute(browser, url) {
        const page = await browser.newPage();
        await page.setCookie({
            name: "secret",
            value: process.env.CHALL_MAVS_FAN_ADMIN_SECRET || "placeholder",
            domain: process.env.CHALL_MAVS_FAN_DOMAIN || "localhost:8080",
            httpOnly: true,
        });
        await page.goto(url);
        await page.waitForNetworkIdle({
            idleTime: 2000,
            timeout: 5000,
        });
        await page.close();
    },
};
