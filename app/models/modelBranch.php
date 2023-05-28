<?php
class modelBranch extends connectDB{
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function get(){
        $sql = "SELECT * FROM branch";
        $result = $this->connect->query($sql);
        return $result;
    }
}

?>