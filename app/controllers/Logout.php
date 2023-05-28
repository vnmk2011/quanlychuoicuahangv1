<?php
    class Logout {
        public function index(){
            if(isset($_SESSION['user']) && isset($_POST['logout'])){
               session_destroy();
               echo "<script>location.href='/'</script>";
            }else{
               require_once __DIR__ . '/../views/404.php';
            }
        }
    }
 ?>