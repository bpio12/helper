<?php

$dns = 'mysql:host = localhost;dbname=id14568500_userinfo';
$user = 'user_info';
$pass = 'Ih8h@ckingBianca';

try {
    $db = new PDO($dns, $user, $pass);
    echo 'connected';
}catch(PDOException $e){
    $error = $e->getMessage();
    echo $error;
}