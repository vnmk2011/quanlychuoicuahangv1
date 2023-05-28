<?php

class menuModel extends connectDB{
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function getAll(){
        $sql = "SELECT * FROM product";
        $result = $this->connect->query($sql);
        return $result;
    }
    public function productNumber(){
        $sql = "SELECT COUNT(*) FROM product";
        $result = $this->connect->query($sql);
        return $result;
    }
    public function getProducts($start, $limit){
        $sql = "SELECT * FROM product LIMIT $start, $limit";
        $result = $this->connect->query($sql);
        return $result;
    }
}
?>
