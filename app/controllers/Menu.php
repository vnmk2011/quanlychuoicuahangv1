<?php
class Menu{
    public function index(){
        echo "Menu - index";
    }
    public function details($id = 1){
        echo "Menu - $id";
    }

    public function search($name=""){
        echo "Product - $name";
    }

}
 ?>