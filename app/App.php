<?php
class App
{
    private $controller = "Home";
    private $action = "index";
    private $params = [];

    /**
     * phân tích URL
     */
    private function parseURL()
    {
        if (isset($_SERVER['REQUEST_URI'])) {
            $uri = trim($_SERVER['REQUEST_URI'], '/');
            $uri = explode('/', $uri);
            return $uri;
        } else {
            return "/";
        }
    }
    public function Run()
    {
        
        $url = $this->parseURL();
        //xử lý controller là phần tử 0 của mảng
        if ($url[0] !== "") {
            $this->controller = ucfirst($url[0]);
        }
        // kiểm tra file controller có tồn tại hay không
        if (file_exists(__DIR__ ."//controllers//" . $this->controller . ".php")) {
            require_once __DIR__ . "//controllers//" . $this->controller . ".php";
            //check class có tồn tại trong file hay không
            if (class_exists($this->controller)) {
                $this->controller = new $this->controller;
            } else {
                require_once __DIR__ . "/views/404.php";
              
            }
            // khi khởi tạo controller xong thì xóa phần tử 0 của mảng đi
            unset($url[0]);
        } else {
            require_once __DIR__ . "/views/404.php";
            
        }

        // xử lý action là phần tử 1 của mảng
        if (isset($url[1])) {
            // kiểm tra phương thức action có tồn tại trong controller hay không
            if (method_exists($this->controller, $url[1])) {
                $this->action = $url[1];
                // khi khởi tạo action xong thì xóa phần tử 1 của mảng đi
                unset($url[1]);
            } else {
                unset($url[1]);
            }
        }

        // xử lý params từ phần tử 2 của mảng trở đi
        $this->params = $url ? array_values($url) : [];
        if (method_exists($this->controller, $this->action)) {
            call_user_func_array([$this->controller, $this->action], $this->params);
        } else {
            require_once __DIR__ . "/views/404.php";
           
        }
    }
}
