<?php
$server = "foodService.c3czvvk6nsib.us-east-1.rds.amazonaws.com";
$user = "eCommerUser";
$pswd = "p@ssw0rd";
$database = "eCommerce";
$port = "3306";

$emailHost = 'smtp.gmail.com';
$smtpUser = 'admin@iamapineapple.me';
$smtpSecret = 'lifhzqdfwlwlfocs';
$smtpPort = "587";

$host_server = 'http://localhost/web/e-commerce/';
if (isset($_SERVER["SERVER_MVC"])) {
    $host_server = $_SERVER["SERVER_MVC"];
} else {
    $_SERVER["SERVER_MVC"] = $host_server;
}

?>
    