# Known solutions
- Please note, this challenge is very much an "open" challenge. These are all of the solutions that I was aware of before the CTF started.
- If you have other possible solutions, feel free to submit a writeup

## Google Sheets API
- Can be done in any google account at https://www.google.com/script/start/
```js
function myFunction() {
  const sheet = SpreadsheetApp.openById("1ULdm_KCOYCWuf6gqpg6tm0t-wnWySX_Bf3yUYOfZ2tw");
  const sheets = sheet.getSheets();
  const secret = sheets.find(x => x.getName() == "flag");
  console.log(secret.getDataRange().getValues().map(l => l.join("")).join("\n"));
  console.log("lactf{H1dd3n_&_prOt3cT3D_5h33T5_Ar3_n31th3r}" === secret.getDataRange().getValues().map(l => l.join("")).join("\n"))
}
```
## Find & Replace
- Using the find & replace function, you are able to "leak" characters in the hidden sheet
- Unfortionately it's partially broken: you have to search each character individually
- You can search using regex to loop through all of the characters, using the option to search specific ranges to leak character by character.

## Network Requests/Inspect element
- Google sheets stores the data for the sheets locally, and when using the find & replace and forcing hidden data out, a request is made to the /streamrows endpoint, leaking the entire sheet
- However, you need to decode the text: google does NOT nicely order the text, so you'd need to undo their compression (ex text and numbers are listed separately)
