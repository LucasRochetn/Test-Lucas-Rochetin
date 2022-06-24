<?php
if ( isset( $_POST['submit'] ) ) {

    $name = $_POST['name']; 
    $email = $_POST['email']; 
    echo 'name : ' . $name . ' email : ' . $email; 
    exit;
 }
if (!function_exists('http_response_code')) {
    function http_response_code($code = NULL) {

        if ($code !== NULL) {

            switch ($code) {
                case 201: $text = "ok:The author id was inserted"; break;
                case 500: $text = "error:Le message d'erreur"; break;
            }
        }
    }
}