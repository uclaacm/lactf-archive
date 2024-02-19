async function flate(stream, data) {
  let pulld = false
  const stream2 = new ReadableStream({
    pull(controller) {
      if (!pulld) {
        pulld = true
        controller.enqueue(data)
      } else {
        controller.close()
      }
    }
  })
  .pipeThrough(stream)

  let chunks = []
  let len = 0
  let reader2 = stream2.getReader()
  while (true) {
    const { done, value: chunk } = await reader2.read()
    if (done) break;
    chunks.push(chunk)
    len += chunk.length
  }

  let mergedChunks = new Uint8Array(len)
  let offset = 0
  for (const chunk of chunks) {
    mergedChunks.set(chunk, offset)
    offset += chunk.length
  }

  return mergedChunks
}

async function compress(data) {
  return [...await flate(new CompressionStream("deflate-raw"), new TextEncoder().encode(data))].map(x => (x <= 15 ? "0" : "") + x.toString(16)).join("")
}

async function decompress(data) {
  return new TextDecoder().decode(await flate(new DecompressionStream("deflate-raw"), Uint8Array.from(data.match(/[0-9a-z]{2}/g).map(b => parseInt(b, 16)))))
}

export { compress, decompress }
