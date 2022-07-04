window.onload = () => {
    const vendorForm = document.getElementById("vendor");
    const categoryForm = document.getElementById("category");
    const balanceForm = document.getElementById("price");

    vendorForm.addEventListener("submit", function (event) {
        event.preventDefault();

        const first = new FormData(this);
        let xhr = new XMLHttpRequest();
        xhr.open("POST", "shop.php");
        xhr.responseType = 'text';
        xhr.send(first);

        xhr.onload = () => {
            document.getElementById("content").innerHTML = xhr.responseText;
        }
    })

    categoryForm.addEventListener("submit", function (event) {
        event.preventDefault();

        const formDataTraffic = new FormData(this);
        let xhr = new XMLHttpRequest();
        xhr.open("POST", "shop.php");
        xhr.responseType = 'json';
        xhr.send(formDataTraffic);

        xhr.onload = () => {
            document.getElementById("content").innerHTML = xhr.response;
        }
    })

    balanceForm.addEventListener("submit", function (event) {
        event.preventDefault();

        const formDataBalance = new FormData(this);
        let xhr = new XMLHttpRequest();
        xhr.open("POST", "shop.php");
        xhr.responseType = 'document';
        xhr.send(formDataBalance);

        xhr.onload = () => {
            document.getElementById("content").innerHTML = xhr.responseXML.body.innerHTML;
        }
    })
}