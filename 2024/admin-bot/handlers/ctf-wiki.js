module.exports = {
    name: "ctf-wiki",
    timeout: 15000,
    async execute(browser, url) {
        const domain = process.env.CHALL_CTF_WIKI_DOMAIN || "http://localhost:1337";
        const page = await browser.newPage();
        await page.goto(domain + "/login");
        await page.waitForSelector("input[name='username']");
        await page.type("input[name='username']", process.env.CHALL_CTF_WIKI_ADMINUSER || "admin");
        await page.type("input[name='password']", process.env.CHALL_CTF_WIKI_ADMINPW || "admin");
        await page.click("input[type='submit']");
        await page.waitForNavigation();
        await page.goto(url);
        await page.waitForNetworkIdle({
            timeout: 10000,
        });
        await page.close();
    },
};
