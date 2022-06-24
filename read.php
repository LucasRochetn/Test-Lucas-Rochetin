<?php

    session_start();
    include 'connect_db.php';
    include 'articles_db.sql';

if ( isset( $_POST['submit'] ) ) {
    $title = $_POST['title']; 
    $name = $_POST['name']; 
    $content = $_POST['content'];
    echo 'title : ' . $title . ' name : ' . $name . ' content : ' . $content; 
    exit;
}