// =====================================================
//          exflag1 (binary oracle), js edition
//                     by Arc'blroth
// =====================================================
// feel free to steal this for your own solve scripts :D

/**
* "parses" the charset "glob"
* 
* @param {string} glob 
* @returns {number[]}
*/
function parseGlob(glob) {
  let lexedGlob = []
  let parsePos = 0
  let eofPos = glob.length
  while (parsePos < glob.length) {
    if (glob[parsePos] === "\\") {
      if (parsePos + 1 === eofPos) throw 'truncated escape in charset "glob"'
      switch (glob[parsePos + 1]) {
        case "\\":
          lexedGlob.push("\\")
          break
        case "-":
          lexedGlob.push("-")
          break
        default:
          throw 'invalid escape in charset "glob"'
      }
      parsePos += 2
    } else if (glob[parsePos] === "-") {
      lexedGlob.push(null)
      parsePos++
    } else {
      lexedGlob.push(glob[parsePos])
      parsePos++
    }
  }
  let parsedGlob = []
  parsePos = 0
  eofPos = lexedGlob.length
  while (parsePos < lexedGlob.length) {
    if (lexedGlob[parsePos] === null) throw 'invalid range in charset "glob"'
    if ((parsePos + 1 !== eofPos) && (lexedGlob[parsePos + 1] === null)) {
      if (parsePos + 2 === eofPos) throw 'invalid range in charset "glob"'
      for(let i = lexedGlob[parsePos].charCodeAt(0); i <= lexedGlob[parsePos + 2].charCodeAt(0); i++) {
        parsedGlob.push(i)
      }
      parsePos += 3
    } else {
      parsedGlob.push(lexedGlob[parsePos].charCodeAt(0))
      parsePos += 1
    }
  }
  return parsedGlob
}

/**
* Exfiltrates a flag, character by character, given a binary oracle and a charset.
* 
* @param {(...args: any[]) => Promise<void>} log
* @param {(flag: string) => Promise<boolean>} oracle
* @param {string} charset
* @param {string} prefix
* @param {(flag: string) => boolean} stop
* @returns {Promise<string>}
* @throws if flag could not be assembled with the given charset
*/
export default async function exflag(log, oracle, prefix="", charset="_0-9a-zA-Z", stop=f=>f.endsWith('}')) {
  charset = parseGlob(charset)
  if (!charset) throw "charset is empty"
  
  let flag = prefix
  while (!stop(flag)) {
    const flagLen = flag.length
    for (const char of charset) {
      const actualChar = String.fromCharCode(char)
      await log(`\x1b[90mtrying "${flag}${actualChar}"\x1b[0m`)
      if (await oracle(flag + actualChar)) {
        flag += actualChar
        await log(`\x1b[33mfound "${flag}"\x1b[0m`)
        break
      }
    }
    if (flag.length === flagLen) {
      // throw "failed to solve next flag character, aborting"
      return flag
    }
  }

  return flag
}
