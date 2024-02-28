<?php
session_start();
error_reporting(0);
$connect=mysqli_connect('localhost','root','','travel.ru');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "travel.ru";

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// if (!$connect) {
//     die('Error db');
// }
?>