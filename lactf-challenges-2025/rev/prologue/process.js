import fs from "fs/promises"
import JSZip from "jszip"

const SHADOW = true

const zip = new JSZip()
await zip.loadAsync(await fs.readFile("prologue.sb3"))

const project = JSON.parse(await zip.files["project.json"].async("string"))

delete project.meta.agent

let stageVariables = null
let stageLists = null
let broadcasts = null
let numVariables = 0

function newVariable() {
  return (numVariables++).toString(2).padStart(8, 'i').replaceAll("0", "i").replaceAll("1", "і")
}

for (let target of project.targets) {
  if (target.name != "Stage" && target.name != "duck") {
    target.visible = false
  }
  if (stageVariables == null && !target.isStage) {
    throw "stage must be the first target for this script to work"
  }

  let variables
  if (target.isStage) {
    broadcasts = new Map(Object.keys(target.broadcasts).map(n => [n, newVariable()]))
    target.broadcasts = Object.fromEntries(Array.from(broadcasts.values()).map(x => [x, x]))

    stageLists = new Map(Object.keys(target.lists).map(n => [n, newVariable()]))
    target.lists = Object.fromEntries(Object.entries(target.lists).map(([k, v]) => [stageLists.get(k), [stageLists.get(k), ...v.slice(1)]]))

    stageVariables = new Map(Object.keys(target.variables).map(n => [n, newVariable()]))
    variables = stageVariables
  } else {
    variables = new Map(stageVariables)
    Object.keys(target.variables).forEach(n => variables.set(n, newVariable()))
  }
  target.variables = Object.fromEntries(Object.entries(target.variables).map(([k, v]) => [variables.get(k), [variables.get(k), ...v.slice(1)]]))

  let procs = new Map()
  let procVariables = new Map()
  for (const block of Object.values(target.blocks)) {
    if (block.opcode === "procedures_prototype") {
      const origProccode = block.mutation.proccode
      block.mutation.proccode = newVariable() + (origProccode.includes("%") ? origProccode.substring(origProccode.indexOf(" ")) : "")

      if (block.mutation.argumentids !== block.mutation.argumentnames) throw "inconsistent block mutation argument ids/names"
      let ids = JSON.parse(block.mutation.argumentids)
      for (let i = 0; i < ids.length; i++) {
        const procVar = ids[i]
        if (variables.has(procVar)) console.warn(`warning: conflict between proc var and sprite var: ${procVar}`)
        if (!procVariables.has(procVar)) {
          procVariables.set(procVar, newVariable())
        }
        ids[i] = procVariables.get(procVar)
      }
      block.mutation.argumentnames = block.mutation.argumentids = JSON.stringify(ids)

      for (const key of Object.keys(block.inputs)) {
        const tmp = block.inputs[key]
        delete block.inputs[key]
        block.inputs[procVariables.get(key)] = tmp
      }

      procs.set(origProccode, [block.mutation.proccode, block.mutation.argumentids])
    }
  }
  
  for (const block of Object.values(target.blocks)) {
    // forcibly shadow inputs
    if (SHADOW) {
      block.shadow = true
      if (block.inputs && !block.opcode.includes("broadcast")) {
        for (let input of Object.values(block.inputs)) {
          input[0] = 3
        }
      }
    }

    function remapVariables(obj) {
      if (obj === undefined) return
      for (const [key, field] of Object.entries(obj)) {
        if (field instanceof Array) {
          if (field.length == 2) {
            if (typeof field[0] === "string" && field[0] === field[1]) {
              field[0] = field[1] = variables.get(field[0]) ?? stageLists.get(field[0])
              if (field[0] == undefined) throw `unknown variable or list`
            } else if (typeof field[0] === "string" && field[1] === null && procVariables.has(field[0])) {
              field[0] = procVariables.get(field[0])
            } else if (key === "BROADCAST_OPTION") {
              field[0] = broadcasts.get(field[0])
            } else if (field[0] === "make gh issue if this bothers u") {
              field[0] = ""
            }
          }
          if (field.length >= 2 && field[1] instanceof Array && field[1].length == 3) {
            if (field[1][0] == 11) {
              field[1][1] = field[1][2] = broadcasts.get(field[1][1])
            } else if (field[1][0] == 12) {
              field[1][1] = field[1][2] = variables.get(field[1][1])
            }
          }
        }
        obj[key] = field
      }
    }

    remapVariables(block.fields)
    remapVariables(block.inputs)
    
    if (block.opcode === "procedures_call") {
      for (const key of Object.keys(block.inputs)) {
        const tmp = block.inputs[key]
        delete block.inputs[key]
        block.inputs[procVariables.get(key)] = tmp
      }
      [block.mutation.proccode, block.mutation.argumentids] = procs.get(block.mutation.proccode)
    }
  }

  if (target.comments) {
    delete target.comments
  }
  if (target.name == "_") {
    target.comments = {
      lactf: {
        text: "You can do this.",
        x: 200,
        y: 200,
        width: 180,
        height: 80,
        minimized: false,
      }
    }
  }
}

zip.file("project.json", JSON.stringify(project))
// fs.writeFile("project.json", JSON.stringify(project))
fs.writeFile("prologue.sb3", await zip.generateAsync({ type: "uint8array" }))
