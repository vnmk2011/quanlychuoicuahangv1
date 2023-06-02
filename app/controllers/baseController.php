<?php
class baseController
{
    /**
     * Hàm load model
     * @param $name tên của model cần check
     * @return mixed model nếu tồn tại, ngược lại thông báo lỗi
     */
    public function loadModel($name)
    {
        // Kiểm tra file model có tồn tại hay không nếu có thì require vào
        if (file_exists(__DIR__ . '/../models/' . $name . '.php')) {
            require_once __DIR__ . '/../models/' . $name . '.php';
            $model = new $name();
            return $model;
        } 
        else {
            echo 'Model not found!';
        }
        return false;
    }
    /**
     * Hàm load view
     * @param $name tên của view cần check
     * @param array $data dữ liệu truyền vào view
     * @return mixed view nếu tồn tại, ngược lại thông báo lỗi
     */
    public function view($name, ...$data)
    {
        // Kiểm tra file view có tồn tại hay không nếu có thì require vào
        if (file_exists(__DIR__ . '/../views/' . $name . '.php')) {
            require_once __DIR__ . '/../views/' . $name . '.php';
        } 
        else {
            echo 'View not found!';
        }
    }
}
