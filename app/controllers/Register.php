<?php
class Register extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('registerModel');
    }
    public function index(){
        if(isset($_SESSION['user'])){
            echo '<script>alert("Bạn đã đăng nhập"); location.href="/";</script>';

        }else {
            require_once __DIR__ . "/../views/Register.php";
            if(isset($_POST['submit'])){self::checkRegister();}
        }
        
    }
    private function checkRegister(){
       $register = $this->model->post($_POST['username'], $_POST['password'], $_POST['email'], $_POST['address'], $_POST['phone'], $_POST['name'], $_POST['gender']);
         if($register){
              echo "<script>alert('Đăng ký thành công')</script>";
         }else{
              echo "<script>alert('Đăng ký thất bại trùng tên đăng nhập')</script>";
         }
    }
}
 ?> 