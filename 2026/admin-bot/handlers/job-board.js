module.exports = {
    name: "job-board",
    async execute(browser, url) {
        const page = await browser.newPage();

        // login as admin recruiter
        await page.goto(process.env.CHALL_JOB_BOARD_URL + '/login');
        await page.waitForSelector('[name=username]');
        await page.type('[name=username]', 'admin');
        await page.type('[name=password]', process.env.CHALL_JOB_BOARD_PASSWORD);
        await page.click('[type=submit]');
        await page.waitForNavigation();

        // now visit the job application applicant sends over
        await page.goto(url);
        await page.waitForNetworkIdle({
            timeout: 5000,
        });
        await page.close();
    },
};
