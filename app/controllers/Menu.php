<?php

class Menu extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('menuModel');
    }
    public function index(){
       $this->render('menu/products', $this->model->getAll());
    }
    public function page($currentPage = 1){
        $limit = 10;
        $totalPage = ceil((int)$this->model->productNumber()->fetch_assoc()["COUNT(*)"] / $limit);
        // Nếu số trang hiện tại lớn hơn tổng số trang thì gán bằng tổng số trang và ngược lại nhỏ hơn 1 thì gán bằng 1
        $currentPage =  $currentPage > $totalPage ?  $totalPage : ($currentPage < 1 ? 1 : $currentPage);
        $start = ($currentPage - 1) * $limit;
        $previousPage = $currentPage > 1 ? $currentPage - 1 : 1;
        $nextPage = $currentPage < $totalPage ? $currentPage + 1 : $totalPage;
        $this->render('menu/products', $this->getProducts($start, $limit) , $previousPage, $nextPage, $currentPage, $totalPage, $this->model->getCategory());
        
    }
    public function details($id){
        $this->render('menu/details', $this->model->getProduct($id));
    }
    public function category($id){
        $this->render('menu/category', $this->model->getProductByCategory($id), $this->model->getCategory());
    }
    private function getProducts($start, $limit){
        $result = $this->model->getProducts($start, $limit);
        return $result;
    }
    public function addCart(){
        if(isset($_SERVER["REQUEST_METHOD"])&& $_SERVER["REQUEST_METHOD"] == 'POST'){
            $id = $_POST["id"];
            $name = $_POST["name"];
            $price = $_POST["price"];
            $image = $_POST["image"];
            $quantity = $_POST["quantity"];
            $product = array(
                "id" => $id,
                "name" => $name,
                "price" => $price,
                "image" => $image,
                "quantity" => $quantity
            );
            $msg = array();
            if(array_key_exists($id, $_SESSION["cart"])){
                $_SESSION["cart"][$id]["quantity"] += $quantity;
            }else{
                $_SESSION["cart"][$id] = $product;
            }
            $msg["status"] = "success";
            $msg["total"] = count($_SESSION["cart"]);
            ob_clean();
            header('Content-Type: application/json');
            echo json_encode($msg);
            
        }
    }

}

 ?>