const express = require("express");
const session = require("express-session");
const crypto = require("crypto");
const cookieParser = require("cookie-parser");
const fs = require("fs").promises;

const PORT = 3000;
const app = express();
app.use(express.static("public"));
app.use(express.json());
app.use(cookieParser());
app.use(session(
    {
        secret: process.env.SESSION_SECRET || "default",
        resave: true,
        saveUninitialized: true,
        cookie: {
            httpOnly: true,
            sameSite: "lax",
        },
    }
));

app.use((_, res, next) => {
    res.locals.nonce = crypto.randomBytes(32).toString("base64");
    res.setHeader("Content-Security-Policy", `default-src 'self'; script-src 'nonce-${res.locals.nonce}'`);
    next();
});

async function renderTemplate(view, params) {
    const template = await fs.readFile(`views/${view}.html`, { encoding: "utf8" });
    const html = Object.entries(params).reduce(
        (p, [k, v]) => p.replace(new RegExp(`{{${k}}}`, "g"), v),
        template
    );

    if (!params.notes) {
        return html;
    }

    return html.replace(
        "{{...notes}}",
        `[${
            params.notes.map(
                n => `'${n.
                    replace(/'/g, "&apos;").
                    replace(/\n/g, "").
                    replace(/\r/g, "").
                    replace(/\\/g, "\\\\")
                    }'`
            ).join(", ")
        }]`);
}

app.get("/", async (req, res) => {
    if (req.session && req.session.username) {
        res.redirect("/profile");
        return;
    }

    res.send(
        await renderTemplate("index", {
            nonce: res.locals.nonce,
        })
    );
});

app.get("/profile", async (req, res) => {
    if (!req.session || !req.session.username) {
        res.redirect("/");
        return;
    }

    res.send(
        await renderTemplate("profile", {
            nonce: res.locals.nonce,
            username: req.session.username,
            notes: req.session.notes || [],
        })
    );
});

app.post("/api/login", (req, res) => {
    const { username, password } = req.body;

    if (!username || typeof username !== "string" || username.length > 100) {
        res.status(400).send({ success: false });
        return;
    }

    if (!password || typeof password !== "string" || password.length > 100) {
        res.status(400).send({ success: false });
        return;
    }

    req.session.username = username;
    req.session.password = password;
    req.session.notes = [];

    res.send({ success: true });
});

app.post("/api/notes", (req, res) => {
    const { note } = req.body;

    if (!req.session) {
        res.status(401).send({ success: false });
        return;
    }

    if (!note || typeof note !== "string") {
        res.status(400).send({ success: false });
        return;
    }

    if (typeof req.session.notes !== "object" || !Array.isArray(req.session.notes)) {
        req.session.notes = [];
    }

    // We aren't web scale yet! :)
    if (note.length > 15 || req.session.notes.length > 15) {
        res.status(400).send({ success: false });
        return;
    }

    req.session.notes.push(note);

    res.send({ success: true });
});

app.post("/api/logout", (req, res) => {
    if (!req.session) {
        res.status(401).send({ success: false });
        return;
    }

    req.session.destroy();
    res.send({ success: true });
});

app.post("/flag", (req, res) => {
    const ADMIN_PW = process.env.ADMIN_PW || "placeholder";
    const FLAG = process.env.FLAG || "lactf{test_flag}";
    if (req.cookies.secret !== ADMIN_PW) {
        res.status(403).send({ success: false });
        return;
    }

    res.send(FLAG);
});

app.listen(PORT, () => console.log(`Started server at http://localhost:${PORT} ...`));
