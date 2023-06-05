function checkPass(e){
    console.log(e);
    let regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$/;
    if(!regex.test(e)){
        document.getElementById("check_pass").innerHTML = "Mật khẩu gồm ký tự hoa, thường, số, ký tự đặc biệt và trên 8 ký tự";
    }else{
        document.getElementById("check_pass").innerHTML = "";
    }
    let rePass = document.getElementById("repassword").value;
    if(rePass != e){
        document.getElementById("passAgain").innerHTML = "Mật khẩu không khớp";
    }
    else{
        document.getElementById("passAgain").innerHTML = "";
    }
};
function passAgain(e){
    let pass = document.getElementById("password").value;
    if(pass != e){
        document.getElementById("passAgain").innerHTML = "Mật khẩu không khớp";
    }
    else{
        document.getElementById("passAgain").innerHTML = "";
        document.getElementById("sm").removeAttribute("disabled");
    }
}