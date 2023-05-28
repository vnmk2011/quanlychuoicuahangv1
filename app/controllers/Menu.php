<?php
class Menu extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('menuModel');
    }
    public function index(){
       $this->render('menu/products', $this->model->getAll());
    }
    

}
 ?>