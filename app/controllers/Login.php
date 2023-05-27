<?php
class Login extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('loginModel');
    } 

    public function index(){
        $this->render('login');
        if(isset($_POST['username']) && isset($_POST['password'])){
            $userName = $_POST['username'];
            $password = $_POST['password'];
            $this->checkLogin($userName, $password);
        }
        
    }
    private function checkLogin($userName, $password){
        $result = $this->model->post($userName, $password);
        if($result){
            $row = $result->fetch_assoc();
            echo " - userName: " . $row["userName"]. " - password: " . $row["password"]. "\n"; 
        }
        else{
            echo "<script>alert('Sai tên đăng nhập hoặc mật khẩu')</script>";
        }

    }
}
 ?>