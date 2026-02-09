const $ = (s) => document.querySelector(s);

const post = (url, json) =>
  fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(json),
  });

// Canvas setup for drawing snake path
const canvas = $("canvas#game-canvas");
const ctx = canvas.getContext("2d");

// Generate a snake path with 14 segments
function generateSnakePath() {
  const path = [];
  const startX = 50;
  const startY = 300;
  const segmentLength = 50;

  let x = startX;
  let y = startY;
  let angle = 0;

  for (let i = 0; i < 14; i++) {
    path.push({ x: Math.round(x), y: Math.round(y) });

    // Create curved path by gradually changing direction
    if (i % 8 === 0) {
      angle += ((Math.random() - 0.5) * Math.PI) / 3;
    }

    x += Math.cos(angle) * segmentLength;
    y += Math.sin(angle) * segmentLength * 0.6; // vertical spacing

    // Keep in bounds
    if (y < 50) y = 50;
    if (y > canvas.height - 50) y = canvas.height - 50;
  }

  return path;
}

const snakePath = generateSnakePath();

function drawSnake(length) {
  // Cap the length at 14
  length = Math.min(length, 14);

  // Clear canvas
  ctx.fillStyle = "#f9f9f9";
  ctx.fillRect(0, 0, canvas.width, canvas.height);

  // Draw path
  ctx.strokeStyle = "#ddd";
  ctx.lineWidth = 8;
  ctx.beginPath();
  for (let i = 0; i < snakePath.length; i++) {
    if (i === 0) {
      ctx.moveTo(snakePath[i].x, snakePath[i].y);
    } else {
      ctx.lineTo(snakePath[i].x, snakePath[i].y);
    }
  }
  ctx.stroke();

  // Draw goal flag at end
  ctx.font = "bold 30px Arial";
  ctx.fillText("🚩", snakePath[13].x - 15, snakePath[13].y + 15);

  // Draw snake
  for (let i = 0; i < length && i < snakePath.length; i++) {
    const pos = snakePath[i];
    ctx.fillStyle = `hsl(${100 + i * 2}, 70%, 50%)`;
    ctx.beginPath();
    ctx.arc(pos.x, pos.y, 10, 0, Math.PI * 2);
    ctx.fill();
    ctx.strokeStyle = "#333";
    ctx.lineWidth = 2;
    ctx.stroke();
  }
}

const setMessage = (msg) => {
  $(".message").textContent = msg;
};

let _currentSig = "";

const setSig = (sig) => {
  _currentSig = sig;
};

let _ready = false;
const setReady = () => {
  _ready = true;
};

let _count = 0;

const setCount = (count) => {
  _count = count;

  $(".grow-count").textContent = "" + count;

  // Draw snake on canvas
  drawSnake(count);

  $("button.grow").classList.add("hidden");
  $("img.flag").classList.add("hidden");

  if (count < 14) {
    $("button.grow").classList.remove("hidden");
  }

  if (count >= 14) {
    $("img.flag").classList.remove("hidden");
  }
};

$("button.grow").addEventListener("click", async () => {
  // Temporarily disable to allow new signature to be generated
  $("img.flag").classList.add("hidden");
  $("button.grow").classList.add("hidden");

  const { msg, count, signature } = await post("/grow", {
    count: _count,
    sig: _currentSig,
  }).then((r) => r.json());
  setMessage(msg);
  setCount(count);
  if (signature != "null") {
    setSig(signature);
  }
});

$("img.flag").addEventListener("click", async () => {
  const { msg, count } = await post("/flag", {}).then((r) => r.json());
  setMessage(msg);
  setCount(count);
});

// query on page load for current count
document.addEventListener("DOMContentLoaded", async () => {
  try {
    const response = await fetch("/current-count");
    const data = await response.json();
    setCount(data.count);
  } catch (error) {
    console.error("Error checking current count:", error);
  }
});

async function pollStatus() {
  try {
    const response = await fetch("/status");
    const data = await response.json();

    if (data.status) {
      document.getElementById("loading-message").innerText = "Ready!";
      $("button.grow").classList.remove("hidden");
      // Load the zero signature if no other signature has been loaded
      const zero_sig_response = await fetch("/zero-signature");
      const zero_sig_data = await zero_sig_response.json();
      if (_currentSig === "") {
        setSig(zero_sig_data.signature);
      }
    } else {
      $("img.flag").classList.add("hidden");
      $("button.grow").classList.add("hidden");
      document.getElementById("loading-message").innerText = "Please wait...";
      setTimeout(pollStatus, 2000);
    }
  } catch (error) {
    console.error("Error checking status:", error);
  }
}

pollStatus();
