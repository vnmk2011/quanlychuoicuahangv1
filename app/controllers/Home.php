<?php
class Home extends baseController{
    public function index(){
        $this->render("home");
        $this->render("menu/products");
    }
    
}
 ?>