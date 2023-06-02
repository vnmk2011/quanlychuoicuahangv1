function cancelOrder(e){
    var id = e.getAttribute("data-id");
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/Order/cancelOrder", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4 && xhr.status == 200){
            var json = JSON.parse(xhr.responseText);
            if(json.status == "success"){
                alert("Order Cancelled");
                window.location.reload();
            }
            else{
                console.log(response);
            }
        }

    }
    xhr.send("cancel_id="+id);
}