<?php
class registerModel extends connectDB {
    private $connect;
    public function __construct(){
        $this->connect = $this->connect();
    }
    public function post(...$arg){
        $sql = "INSERT INTO account (id, userName, password, email, address, phone, name, gtinh, user_admin) VALUES(NULL, '$arg[0]', '$arg[1]', '$arg[2]', '$arg[3]', '$arg[4]', '$arg[5]', '$arg[6]', 0)";
        $result = $this->connect->query($sql);
        return $result;

    }
}

?> 