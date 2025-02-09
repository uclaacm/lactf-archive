const puppeteer = require("puppeteer");

module.exports = {
    name: "chessbased",
    timeout: 300000,
    noContext: true,
    async execute(nn, url) {
        const browser = await puppeteer.launch({ pipe: true, args: [] });
        try {
          const page = await browser.newPage();
          await page.setCookie({
              name: "adminpw",
              value: process.env.CHALL_CHESSBASED_ADMINPW || "placeholder",
              domain: process.env.CHALL_CHESSBASED_DOMAIN || "localhost:8080",
              httpOnly: true,
              sameSite: "Lax",
          });
          await page.goto(url);
          await page.waitForNetworkIdle({
              timeout: 300000,
          });
          await page.close();
        } finally {
            browser.close();
        }
    },
};
