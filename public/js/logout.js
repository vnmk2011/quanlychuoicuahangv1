async function logout(){
    let reqPromise = new Promise((resolve, reject) => {
        var req = new XMLHttpRequest();
        req.open("POST", "/logout", true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.onreadystatechange = () => {
        if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
            resolve(location.reload());
        }else{
            reject(req.responseText);
        }
      };    
    req.send("logout=true");
    });
    await reqPromise;

}
