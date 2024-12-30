import puppeteer from 'puppeteer-core';

const browser = await puppeteer.launch({
    executablePath: 'A:/Program Files/Google/Chrome/Application/chrome.exe',
    userDataDir: 'A:/Users/Bette/AppData/Local/Google/Chrome/User Data',
    headless: false,
});

const page = await browser.newPage();

await page.goto('https://www.yuque.com');

await page.setViewport({width: 1920, height: 1080});

await browser.close();