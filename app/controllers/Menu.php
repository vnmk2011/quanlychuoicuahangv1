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
        $this->render('menu/products', $this->getProducts($start, $limit) , $previousPage, $nextPage, $currentPage, $totalPage);
        
    }
    private function getProducts($start, $limit){
        $result = $this->model->getProducts($start, $limit);
        return $result;
    }

}

 ?>