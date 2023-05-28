<?php
session_start();
require_once 'bootstrap.php';
$app = new App();
$app->Run();
// $connect = new connectDB();
// $connect->connect();
// $sql = "SELECT * FROM `khachhang`";
// $result = $connect->connect()->query($sql);
?>