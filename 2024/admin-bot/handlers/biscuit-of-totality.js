module.exports = {
  name: "biscuit-of-totality",
  timeout: 60000 * 5 + 3000,
  async execute(browser, url) {
    const page = await browser.newPage();
    await page.setCookie({
      name: "flag",
      value: process.env.CHALL_BISCUIT_OF_TOTALITY_FLAG || "placeholder",
      domain: process.env.CHALL_BISCUIT_OF_TOTALITY_DOMAIN || "localhost:8080",
      httpOnly: false,
      sameSite: "Lax",
    });
    await page.goto(url);
    await page.waitForNetworkIdle({
      timeout: 60000 * 5,
    });
    await page.close();
  },
};
