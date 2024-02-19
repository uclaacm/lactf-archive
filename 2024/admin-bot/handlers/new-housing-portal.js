module.exports = {
    name: "new-housing-portal",
    timeout: 10000,
    async execute(browser, url) {
        const page = await browser.newPage();
        await page.goto(process.env.CHALL_NEW_HOUSING_PORTAL_DOMAIN + "/login");
        await page.waitForSelector("input[name='username']");
        await page.type("input[name='username']", 'samy');
        await page.type("input[name='password']", process.env.CHALL_NEW_HOUSING_PORTAL_ADMINPW);
        await page.click("input[type='submit']");
        await page.goto(url);
        await page.waitForNetworkIdle({
            timeout: 5000,
        });
        await page.close();
    },
};
