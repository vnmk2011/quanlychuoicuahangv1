<?php
class cartModel extends connectDB{
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function post(...$arg){
        $sql = $sql = "INSERT INTO oder_item(`id`, `oder_id`, `product_id`, `quantity`) VALUES (NULL, $idOrder, $productId, $quantity)";
    }

}
 ?>