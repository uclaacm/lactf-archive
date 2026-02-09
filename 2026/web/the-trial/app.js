const express = require("express");
const fs = require("fs");

const app = express();
const port = Number(process.env.PORT) || 8080;
const flag = process.env.FLAG || "flag{placeholder_flag}";

const index = fs.readFileSync("index.html", "utf8");

app.use(express.urlencoded());

app.get("/", (req, res) => {
    res.send(index);
});

app.post("/getflag", (req, res) => {
    const word = req.body.word;
    if (word?.toLowerCase?.() !== "flag") {
        const opts = [
            "You want the WHAT?",
            "Sorry, I can't do that.",
            "You are 1523rd in line. Please try again in 17 business days.",
            "ajfoiamcryewaufaibiaunceiwaueafidsm",
            "Subscribe to LA CTF Premium for exclusive support."
        ];
        res.type("text/plain").send(opts[Math.floor(Math.random() * opts.length)]);
    } else {
        res.type("text/plain").send(`Ah, you want the flag? Well here you go! ${flag}`);
    }
});

app.listen(port, () => {
    console.log(`App listening on port ${port}.`);
});
