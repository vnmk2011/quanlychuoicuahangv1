<?php
class loginModel extends connectDB{
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function post(){
        var_dump($this->connect);
    }
}
 ?>