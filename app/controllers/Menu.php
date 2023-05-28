<?php
class Menu extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel('menuModel');
    }
    public function index(){
       $this->render('menu/products');
       var_dump($this->parseData()[0]);
    }
    public function parseData(){
        $result = $this->model->get();
        $data = [];
        while($row = $result->fetch_assoc()){
            $html = '<div class="item">';
            $html .= '<div class="img-content"><figure>';
            $html .= '<img src="/public/images/'.$row['image'].'" alt="'.$row['name'].'" loading="lazy">';
            $html .= '</figure></div>';
            $html .= '<div class="description">';
            $html .= '<div class="name-product">';
            $html .= '<h3><a href="Menu/product/'.$row['id'].'">'.$row['name'].'</a></h3>';
            $html .= '<span class="sale" title="Giảm giá '. $row["discount"] .'%">-' . $row["discount"] . '%</span>';
            $html .= '</div></div>';
            $html .= '<div class="price-add">';
            $html .= '<div class="price"><span title="Giá sản phẩm">'.number_format((int)$row['price']).'đ</span></div>';
            $html .= '<div class="add">';
            $html .= '<a title="Thêm vào giỏ hàng" id="product-id-'.$row['id'].'" data-id="'.$row['id'].'" data-name="'.$row['name'].'" data-price="'.$row['price'].'" data-image="/public/images/product/'.$row['image'].'" data-quantity="1" onclick="addCart(this)"><i class="fa-solid fa-cart-plus"></i></a>';
            $html .= '</div></div></div>';
            $data[] = $html;
        }
        return $data;
    }

}
 ?>