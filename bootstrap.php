<?php
require_once __DIR__ . '/configs/config.php';
require_once __DIR__ . '/app/controllers/baseController.php';
ob_start();
require_once __DIR__ . '/inc/header.php';
require_once __DIR__ . '/app/models/connectDB.php';
require_once __DIR__ . '/app/App.php';
require_once __DIR__ . '/inc/footer.php';
?>