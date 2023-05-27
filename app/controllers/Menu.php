<?php
class Menu extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('menuModel');
    }
    public function index(){
       $this->render('menu/products');
    }
    public function details($id = 1){
        $this->render('menu/details');
    }

    public function search($name=""){
        echo "Product - $name";
    }

}
 ?>