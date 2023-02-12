async function submitList() {
    const list = document.getElementById("list").value;
    const res = await fetch("/list", {
        method: "POST",
        body: "list=" + encodeURIComponent(list),
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        }
    });
    if (res.status !== 200) {
        const error = document.getElementById("error");
        error.innerText = await res.text();
        error.classList.remove("hidden");
    } else {
        location.href = "/view.html#" + encodeURIComponent(await res.text());
    }
}