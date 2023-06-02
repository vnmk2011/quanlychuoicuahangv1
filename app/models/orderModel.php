<?php
class orderModel extends connectDB{
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function get(){
        $sql = "SELECT * FROM oder";
        return $this->connect->query($sql);
    }
    public function post($id){
        $sql = "UPDATE oder SET status = 'cancel' WHERE oder.id = $id";
        return $this->connect->query($sql);
    }
}
?>