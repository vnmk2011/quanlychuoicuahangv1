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
        $totalPage = ceil((int)$this->model->productNumber()->fetch_assoc()["COUNT(*)"] / LIMIT_PAGE);
        // Nếu số trang hiện tại lớn hơn tổng số trang thì gán bằng tổng số trang và ngược lại nhỏ hơn 1 thì gán bằng 1
        $currentPage =  $currentPage > $totalPage ?  $totalPage : ($currentPage < 1 ? 1 : $currentPage);
        $start = ($currentPage - 1) * LIMIT_PAGE;
        $previousPage = $currentPage > 1 ? $currentPage - 1 : 1;
        $nextPage = $currentPage < $totalPage ? $currentPage + 1 : $totalPage;
        $this->render('menu/products', $this->getProducts($start) , $previousPage, $nextPage, $currentPage, $totalPage, $this->model->getCategory());
        
    }
    public function details($id){
        $this->render('menu/details', $this->model->getProduct($id));
    }
    public function category($id){
        $this->render('menu/category', $this->model->getProductByCategory($id), $this->model->getCategory());
    }
    private function getProducts($start){
        $result = $this->model->getProducts($start, LIMIT_PAGE);
        return $result;
    }
    public function addCart(){
        if(isset($_SERVER["REQUEST_METHOD"])&& $_SERVER["REQUEST_METHOD"] == 'POST'){
            $id = $_POST["id"];
            $msg = array();
            $msg["status"] = "200";
            // Trừ số lượng sản phẩm trong giỏ hàng
            if(array_key_exists($id, $_SESSION["cart"]) && isset($_POST["decrease"])){
                $_SESSION["cart"][$id]["quantity"] -= 1;
                $msg["msg"] = "Decrease quantity success";
                $msg["quantity"] = $_SESSION["cart"][$id]["quantity"];
                $msg["totalPrice"] = $this->totalPrice();
                $_SESSION['totalPrice'] = $msg["totalPrice"];
                ob_clean();
                header('Content-Type: application/json');
                echo json_encode($msg);
            }elseif(array_key_exists($id, $_SESSION["cart"])){
                // Khi sản phẩm đã có trong giỏ hàng
                $_SESSION["cart"][$id]["quantity"] += 1;
                $msg["quantity"] = $_SESSION["cart"][$id]["quantity"];
                $msg["total"] = count($_SESSION["cart"]);
                $msg["msg"] = "Increase quantity success";
                $msg["totalPrice"] = $this->totalPrice();
                $_SESSION['totalPrice'] = $msg["totalPrice"];
                ob_clean();
                header('Content-Type: application/json');
                echo json_encode($msg);
            }else{
                // khi chưa có đơn hàng nào trong giỏ hàng
                $name = $_POST["name"];
                $price = $_POST["price"];
                $image = $_POST["image"];
                $quantity = $_POST["quantity"];
                $product = array(
                "name" => $name,
                "price" => $price,
                "image" => $image,
                "quantity" => $quantity
                );
                $_SESSION["cart"][$id] = $product;
                $msg["total"] = count($_SESSION["cart"]);
                ob_clean();
                header('Content-Type: application/json');
                echo json_encode($msg);
            }
            
            
        } 
    }
    private function totalPrice()
    {
        $total = array_reduce($_SESSION["cart"], function ($prev, $current) {
            return $prev + $current['price'] * $current['quantity'];
        }, 0);
        $_SESSION['totalPrice'] = $total;
        return $total;
    }

}

 ?>