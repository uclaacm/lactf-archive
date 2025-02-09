module.exports = {
    name: "purell",
    async execute(browser, url) {
        const levelName = url.match(/^https:\/\/purell\.chall\.lac\.tf\/level\/([0-9A-Za-z-]+)\?.+/i)[1]

        const levelMap = new Map();
        levelMap.set('start', 0);
        levelMap.set('no-scr7pt-owo', 1);
        levelMap.set('no-more-xss', 2);
        levelMap.set('tricky-lil-hacker', 3);
        levelMap.set('sneeki-breeki', 4);
        levelMap.set('spaceless', 5);
        levelMap.set('parentheless', 6);

        console.log(`PURELL - Level name: ${levelName}`)

        const levelNum = levelMap.get(levelName);
        console.log(`PURELL - Level number: ${levelNum}`)

        if (levelNum === undefined) {
            return {
                error: "URL must be exactly of the form https://purell.chall.lac.tf/level/LEVEL_NAME?html=YOUR_PAYLOAD_HERE"
            };
        }

        // console.log(`Visiting ${url} with level ${levelNum}'s cookie`)

        const page = await browser.newPage();
        await page.setCookie({
            name: "adminpw",
            value: process.env[`CHALL_PURELL_ADMINPW_${levelNum}`] || "placeholder",
            domain: process.env.CHALL_PURELL_DOMAIN || "localhost:8080",
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
