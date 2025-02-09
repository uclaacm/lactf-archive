const puppeteer = require("puppeteer");

module.exports = {
    name: "chessbased",
    noContext: true,
    async execute(nn, url) {
        const browser = await puppeteer.launch({ pipe: true, args: ["--js-flags=--jitless"] });
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
              idleTime: 5000,
              timeout: 300000
          });
          await page.close();
        } finally {
            browser.close();
        }
    },
};
