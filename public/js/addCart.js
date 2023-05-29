 function addCart(e) {
    let id = e.getAttribute("data-id");
    let name = e.getAttribute("data-name");
    let price = e.getAttribute("data-price");
    let image = e.getAttribute("data-image");

    var req = new XMLHttpRequest();
    req.open("POST", "/Menu/addCart", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.onreadystatechange = () => {
        if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
            let data = JSON.parse(req.responseText);
            console.log(data);
        } 
    };
    req.send("id=" + id + "&name=" + name + "&price=" + price + "&image=" + image + "&quantity=1");

};
