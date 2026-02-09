const http = require("http");

const FLAG = process.env.FLAG || "lactf{fake_flag}";
const PORT = 8081;

const server = http.createServer((req, res) => {
  if (req.method === "GET" && req.url === "/flag") {
    res.writeHead(200, { "Content-Type": "text/html" });
    res.end(`<div><strong>FLAG:</strong> ${FLAG}</div>`);
    return;
  }
  res.writeHead(404, { "Content-Type": "text/plain" });
  res.end("Not found");
});

server.listen(PORT, () => {
  console.log(`Flag service running on port ${PORT}`);
});
