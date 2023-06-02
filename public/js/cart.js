async function increaseValue(e){
    var id = e.getAttribute("data-cart-id");
    var productId = e.getAttribute("data-product-id");
    var currentValue = document.getElementById(id);
    var price = e.getAttribute("data-price");
    currentValue.value = parseInt(currentValue.value) + 1;
    var priceElement = document.getElementById("price-product-" + productId);
    let promise = new Promise((resolve)=>{
        let req = new XMLHttpRequest();
        req.open("POST", "Menu/addCart", true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.onreadystatechange = () => {
            if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
                priceElement.innerHTML = "Đơn giá: " + parsePrice(String(currentValue.value * price)) + "đ";
                let json = JSON.parse(req.responseText);
                resolve(json.totalPrice);
            }  
    }
    req.send("id=" + productId);
    });
    document.getElementById('total-product-price').innerHTML = parsePrice(String(await promise)) + "đ";
}
async function decreaseValue(e){
    var id = e.getAttribute("data-cart-id");
    var productId = e.getAttribute("data-product-id");
    var currentValue = document.getElementById(id);
    var price = e.getAttribute("data-price");
    var priceElement = document.getElementById("price-product-" + productId);
    if(currentValue.value > 1){
        currentValue.value = parseInt(currentValue.value) - 1;
        let promise = new Promise((resolve)=>{
            let req = new XMLHttpRequest();
            req.open("POST", "Menu/addCart", true);
            req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            req.onreadystatechange = () => {    
                if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
                    priceElement.innerHTML = "Đơn giá: " + parsePrice(String(currentValue.value * price)) + "đ";
                    let json = JSON.parse(req.responseText);
                    resolve(json.totalPrice);
                } 
            }
            req.send("id=" + productId + "&decrease=true");
        });
        document.getElementById('total-product-price').innerHTML = parsePrice(String(await promise)) + "đ";
      
    }
}
function removeCart(e){
    var id = e.getAttribute("data-product-id");
    var req = new XMLHttpRequest();
    req.open("POST", "cart/delete", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.onreadystatechange = () => {
        if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
            location.reload();
        } 
    }
    console.log(id);
    req.send("id=" + id );
}
function price(e){
    var id = e.getAttribute("data-cart-id");
    var price = e.getAttribute("data-price");
    var priceElement = document.getElementById("price-product-" + id);
    console.log(e.value);
    
    priceElement.innerHTML = "Đơn giá: " + parsePrice(String(parseInt(e.value) * price)) + "đ";
}
function parsePrice(price){
    return price.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
}