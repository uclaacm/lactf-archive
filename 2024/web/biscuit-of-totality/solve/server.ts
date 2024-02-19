import { serveFile } from "https://deno.land/std@0.213.0/http/file_server.ts"
import { Server } from "https://deno.land/x/socket_io@0.2.0/mod.ts"

const io = new Server()

io.on("connection", socket => socket.on("log", x => console.log(...JSON.parse(x))))

Deno.serve({ port: 8080 }, io.handler(async req => {
  let path
  try {
    path = decodeURIComponent(new URL(req.url).pathname)
  } catch {
    path = null
  }
  let file: string = "./pixel.gif"
  
  if (path != null) {
    if (path == "/") {
      file = "./index.html"
    } else if (["/compress.js", "/exflag.js", "/solve.js"].includes(path)) {
      file = "." + path
    } else if (path.endsWith(".gif")) {
      console.log("sus")
      io.emit("sus")
    } else if (path == "/spinlock") {
      while (true) {
        await new Promise(res => setTimeout(res, 100000))
      }
    }
  } else {
    io.emit("sus")
  }

  return serveFile(req, file, {
    headers: "cache-control: no-store"
  })
}))
