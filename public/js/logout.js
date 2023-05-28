function logout(){
    var req = new XMLHttpRequest();
    req.open("POST", "/logout", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.onreadystatechange = () => {
        if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
            location.reload();
        }
      };
    req.send("logout=true");
}