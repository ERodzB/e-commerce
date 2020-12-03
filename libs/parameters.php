<?php
$server = "foodservice.c3czvvk6nsib.us-east-1.rds.amazonaws.com";
$user = "mysqlUser";
$pswd = "p@ssw0rd";
$database = "foodService";
$port = "3306";

$emailHost = 'smtp.gmail.com';
$smtpUser = '';
$smtpSecret = '';
$smtpPort = "587";

$host_server = 'http://localhost/mvc/';
if (isset($_SERVER["SERVER_MVC"])) {
    $host_server = $_SERVER["SERVER_MVC"];
}

?>
    