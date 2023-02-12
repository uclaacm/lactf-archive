const loading = document.getElementById("loading");
const error = document.getElementById("error");
const list = document.getElementById("list");
const id = location.hash.slice(1);
if (!/^[-0-9a-f]+$/.test(id)) {
    error.innerText = "invalid list id";
    error.classList.remove("hidden");
    loading.classList.add("hidden");
} else {
    (async function () {
        const res = await fetch("/list/" + id);
        try {
            const json = await res.json();
            if (res.status !== 200) {
                error.innerText = json.error;
                error.classList.remove("hidden");
            } else {
                list.innerHTML = json.map((x, i) => `<li><input type="checkbox" id="item${i}"><label for="item${i}">${x}</label></li>`).join("");
                list.classList.remove("hidden");
            }
            loading.classList.add("hidden");
        } catch (err) {
            error.innerText = "something went really wrong";
            error.classList.remove("hidden");
            loading.classList.add("hidden");
        }
    })();
}
