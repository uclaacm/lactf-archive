const guessButton = document.getElementById("guessButton");
const inputGuess = document.getElementById("inputGuess");

const animationCycles = 10;
const animationDuration = 1000;
const intervalTime = animationDuration / animationCycles;

guessButton.addEventListener("click", async () => {
  const query = inputGuess.value.trim();

  if (query) {
    try {
      const response = await fetch(
        `/api/guess?num=${encodeURIComponent(query)}`
      );
      const message = (await response.json()).response_msg;
      let displayMessage = message;
      let cycleCount = 0;

      if (message.split(" ")[0] === "Wrong") {
        const animationInterval = setInterval(() => {
          displaySplit = displayMessage.split(" ");
          displaySplit[displaySplit.length - 1] = Math.floor(
            Math.random() * 1e9
          );
          displayMessage = displaySplit.join(" ");
          document.getElementById("display").textContent = displayMessage;
          cycleCount++;
          if (cycleCount >= animationCycles) {
            clearInterval(animationInterval);
            document.getElementById("display").textContent = message;
          }
        }, intervalTime);
      } else {
        document.getElementById("display").textContent = message;
      }
    } catch (error) {
      console.error("Error with guess:", error);
      document.getElementById("display").textContent = "Failed to guess.";
    }
  } else {
    alert("Please enter a number.");
  }
});
