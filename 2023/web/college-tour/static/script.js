let dark = 1;

function dark_mode() {
    dark = 1 - dark;
    var element = document.body;
    element.classList.toggle("dark-mode");
    if (dark === 1) {
        document.getElementById("dark_mode_button").textContent = "Click me for Light Mode!";
    }
    else if (dark === 0) {
        document.getElementById("dark_mode_button").textContent = "Click me for Dark Mode!";
    }
    else {
        document.getElementById("dark_mode_button").textContent = "Click me for lactf{6_AY_hi} Mode!";
    }
}

window.addEventListener("load", (event) => {
    document.cookie = "cookie=lactf{5_U1n_s}";
});