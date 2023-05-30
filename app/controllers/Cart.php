<?php
class Cart extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('cartModel');
    }
    public function index(){
        if(!isset($_SESSION["user"])){
            echo '<script>location.href="/";</script>';
        }
        $this->render('Cart', $this->loadModel("modelBranch")->get());
    }
    public function delete(){
        if(isset($_POST["id"])){
            $id = $_POST["id"];
            unset($_SESSION["cart"][$id]);
        }
        ob_clean();
        echo $_POST["id"];
    }
    
}
 ?>