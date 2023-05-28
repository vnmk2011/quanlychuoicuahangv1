<?php
class connectDB
{
    private $host = "localhost";
    private $user = "conggioi";
    private $pass = "";
    private $dbname = "quanlychuoicuahang";
    public function connect()
    {
        $connect = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
        if($connect->connect_error){
            die("Connection failed: " . $connect->connect_error);
        }
        return $connect;
    }
}
?>