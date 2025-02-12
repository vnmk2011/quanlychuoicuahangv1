<?php
class Order extends baseController{
    private $model;
    public function __construct(){
        $this->model = $this->loadModel("orderModel");
    }
    public function index(){
        if(!isset($_SESSION["user"])){
            echo '<script>location.href="/";</script>';
        }
        $this->view("Order",$this->model->get());
    }
    public function details($id = 0){
        echo "Order - $id";
    }
    /**
     * @method POST
     * hủy đơn hàng
     */
    public function cancelOrder(){
        if (isset($_POST["cancel_id"])) {
            $id = $_POST["cancel_id"];
            $this->model->post($id);
            $msg  = array("status" => "success",
                "msg" => "Hủy đơn hàng thành công");
            ob_clean();
            header('Content-Type: application/json');
            echo json_encode($msg);
        }
    }
}
 ?>