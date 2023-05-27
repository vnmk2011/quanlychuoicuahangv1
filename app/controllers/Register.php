<?php
class Register extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('registerModel');
    }
    public function index(){
        $this->render('register');
    }
}
 ?>