<?php
class baseController
{

    public function loadModel($name)
    {
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
}
