// Token: 9D34859CA6FC9BB8A57DB4F444CDAE83
// You do not need to deobfuscate this code.
function _0x2d52(_0x3116f1, _0x5c1099) {
  var _0x15be24 = _0xc9e3();
  return (
    (_0x2d52 = function (_0x41f528, _0x27c380) {
      _0x41f528 = _0x41f528 - (-0x261e + -0x23e0 + -0x121 * -0x43);
      var _0x878472 = _0x15be24[_0x41f528];
      return _0x878472;
    }),
    _0x2d52(_0x3116f1, _0x5c1099)
  );
}
function _0xc9e3() {
  var _0x530cd8 = [
    "\x34\x31\x30\x30\x4b\x7a\x73\x6c\x70\x4e",
    "\x32\x36\x31\x50\x4d\x48\x64\x48\x51",
    "\x37\x30\x32\x34\x31\x30\x5a\x6d\x6a\x4a\x66\x6b",
    "\x34\x34\x31\x39\x31\x38\x7a\x77\x4d\x4d\x54\x66",
    "\x36\x32\x39\x35\x32\x69\x69\x76\x49\x68\x4b",
    "\x34\x44\x41\x45\x46\x38\x41\x44\x36",
    "\x33\x30\x32\x36\x37\x33\x72\x74\x57\x6e\x58\x6d",
    "\x61\x2d\x74\x6f\x6b\x65\x6e\x3d\x36\x34",
    "\x38\x38\x46\x36\x41\x37\x35\x30\x30\x43",
    "\x54\x6f\x6b\x65\x6e\x3a\x20\x35\x44\x31",
    "\x35\x32\x37\x34\x36\x30\x45\x43\x77\x54\x6d\x56",
    "\x31\x35\x31\x46\x31\x37\x30\x37\x46\x32",
    "\x31\x38\x31\x30\x39\x36\x6f\x73\x77\x7a\x51\x6a",
    "\x6c\x6f\x67",
    "\x63\x6f\x6f\x6b\x69\x65",
    "\x31\x38\x79\x65\x6d\x53\x77\x76",
    "\x39\x39\x69\x55\x44\x4e\x66\x69",
  ];
  _0xc9e3 = function () {
    return _0x530cd8;
  };
  return _0xc9e3();
}
var _0x471dbd = _0x2d52;
(function (_0x53cab2, _0x4d06c8) {
  var _0x97c765 = {
      _0x5a6c08: 0x1aa,
      _0x3ae67c: 0x1ae,
      _0x2fc6f8: 0x1b5,
      _0x2f6fc0: 0x1b1,
      _0x4baccd: 0x1af,
      _0x31175d: 0x1ac,
    },
    _0x7e6301 = _0x2d52,
    _0x29f503 = _0x53cab2();
  while (!![]) {
    try {
      var _0x30ffb3 =
        (-parseInt(_0x7e6301(_0x97c765._0x5a6c08)) /
          (0x1d12 + -0xe13 + -0xefe)) *
          (parseInt(_0x7e6301(0x1ab)) / (-0x127c + -0x1229 + 0x24a7)) +
        parseInt(_0x7e6301(_0x97c765._0x3ae67c)) /
          (-0xe59 + 0xcae * 0x1 + 0x1ae) +
        parseInt(_0x7e6301(0x1a6)) / (-0x1 * -0x1532 + 0xaf8 + -0x2 * 0x1013) +
        parseInt(_0x7e6301(_0x97c765._0x2fc6f8)) /
          (-0xb01 + 0x1603 + -0x1 * 0xafd) +
        (parseInt(_0x7e6301(0x1a9)) /
          (-0x4 * 0x35c + -0x1f53 + -0x2cc9 * -0x1)) *
          (-parseInt(_0x7e6301(_0x97c765._0x2f6fc0)) /
            (-0x2563 + 0xfef + -0x27 * -0x8d)) +
        (parseInt(_0x7e6301(_0x97c765._0x4baccd)) /
          (0x250c + 0xfb5 * -0x2 + -0x2 * 0x2cd)) *
          (parseInt(_0x7e6301(_0x97c765._0x31175d)) /
            (0x103a + -0x2589 + -0x1 * -0x1558)) +
        -parseInt(_0x7e6301(0x1ad)) / (-0x3fd + 0x260b + -0x2204);
      if (_0x30ffb3 === _0x4d06c8) break;
      else _0x29f503["push"](_0x29f503["shift"]());
    } catch (_0x5bc206) {
      _0x29f503["push"](_0x29f503["shift"]());
    }
  }
})(_0xc9e3, 0x37869 + -0x3783d + -0x6f * -0x457),
  console[_0x471dbd(0x1a7)](
    _0x471dbd(0x1b4) +
      "\x46\x39\x38\x42\x43\x45\x45\x35\x31\x35" +
      _0x471dbd(0x1b3) +
      _0x471dbd(0x1b0),
  ),
  (document[_0x471dbd(0x1a8)] =
    _0x471dbd(0x1b2) +
    "\x37\x45\x36\x37\x42\x34\x41\x38\x46\x34" +
    "\x41\x41\x32\x38\x46\x41\x42\x36\x30\x32" +
    _0x471dbd(0x1a5)),
  undefined;

// from https://codepen.io/whipcat/pen/ExKPQqZ, converted to normal JS
document.querySelector("body").addEventListener("mousemove", function (event) {
  const eyes = document.querySelectorAll(".eye");
  eyes.forEach((eye) => {
    // Get element position and dimensions
    const rect = eye.getBoundingClientRect();
    const x = rect.left + rect.width / 2 + window.scrollX;
    const y = rect.top + rect.height / 2 + window.scrollY;

    const rad = Math.atan2(event.pageX - x, event.pageY - y);
    const rot = rad * (180 / Math.PI) * -1 + 180;

    // Apply rotation transform
    eye.style.transform = `rotate(${rot}deg)`;
  });
});
