const msg = document.getElementById("msg");
const flagInp = document.getElementById("flag");
const checkBtn = document.getElementById("check");

function checkFlag(flag) {
    const step1 = btoa(flag);
    const step2 = step1.split("").reverse().join("");
    const step3 = step2.replaceAll("Z", "[OLD_DATA]");
    const step4 = encodeURIComponent(step3);
    const step5 = btoa(step4);
    return step5 === "JTNEJTNEUWZsSlglNUJPTERfREFUQSU1RG85MWNzeFdZMzlWZXNwbmVwSjMlNUJPTERfREFUQSU1RGY5bWI3JTVCT0xEX0RBVEElNURHZGpGR2I=";
}

checkBtn.addEventListener("click", () => {
    const flag = flagInp.value.toLowerCase();
    if (checkFlag(flag)) {
        flagInp.remove();
        checkBtn.remove();
        msg.innerText = flag;
        msg.classList.add("correct");
    } else {
        checkBtn.classList.remove("shake");
        checkBtn.offsetHeight;
        checkBtn.classList.add("shake");
    }
});
