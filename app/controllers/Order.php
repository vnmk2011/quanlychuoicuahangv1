<?php
class Order{
    public function index(){
        if(!isset($_SESSION["user"])){
            echo '<script>location.href="/";</script>';
        }
        echo "Order - index";
    }
    public function details($id = 0){
        echo "Order - $id";
    }
}
 ?>