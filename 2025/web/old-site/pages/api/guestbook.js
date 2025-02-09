// Next.js API route support: https://nextjs.org/docs/api-routes/introduction

import fs from "fs"

// TODO(arc) I genuinely forgor what guestbook server I was using back then
// but Aplet123 wants this up now so I'll just polyfill something in Next real quick
export default function handler(req, res) {
  try {
    if (req.method == "POST") {
      if (req.body && req.body["UR MESSAGE"]) {
        const msg = req.body["UR MESSAGE"]
        // we only allow ASCII text, as the 2000s intended
        if (typeof msg == "string" && msg.length > 0 && /^[ -~]+$/.test(msg)) {
          let messages = fs.readFileSync("guestbook.txt", { encoding: "ascii" }).split("\n")
          messages.push(msg)
          fs.writeFileSync("guestbook.txt", messages.join("\n"))
        }
        res.redirect(303, "/")
        return
      }
    } else if (req.method == "GET") {
      const messages = fs.readFileSync("guestbook.txt", { encoding: "ascii" }).split("\n")
      const list = messages.map(m => `<LI>${m.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")}</LI>`).join("")
      const html = `<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"><HTML><HEAD><TITLE>arcblrost's guestbook!!!</TITLE></HEAD><BODY TEXT="white"><FONT FACE="Comic Sans MS"><UL>${list}</UL></FONT></BODY></HTML>`
      res.setHeader("Content-Type", "text/html")
      res.status(200).send(html)
      return
    } else {
      res.status(405).end()
      return
    }
  } catch {
    res.status(500).end()
  }
}
