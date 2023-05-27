<?php
class Branch extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel("modelBranch");
    }
    public function index(){
        $this->render("Branch", $this->parseData());
    }
    public function parseData(){
        $result = $this->model->get();
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $html = '<div class="item-branch">';
            $html .= '<a href="#">';
            $html .= '<img src="/public/images/'.$row['img'].'" alt="Chi nhánh">';
            $html .= '</a>';
            $html .= '<div class="item-branch-content">';
            $html .= '<div class="title">';
            $html .= '<h3>'.$row['name'].'</h3>';
            $html .= '</div>';
            $html .= '<div class="address">';
            $html .= '<p>'.$row['address'].'</p>';
            $html .= '</div>';
            $html .= '</div>';
            $html .= '</div>';
            $data[] = $html;
        }
        return $data;
    }


}
 ?>