<?php
error_reporting(0);
include_once 'controllers/db.php';
// 3 задание
$allowedIPs = array("127.0.0.1", "127.0.0.4");
$userIP = $_SERVER['REMOTE_ADDR'];
// echo $userIP;
if (!in_array($userIP, $allowedIPs)) {
    die("Доступ запрещен!");
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>XSS</title>
	<link rel="stylesheet" type="text/css" href="assetss\style.css">
</head>
<body>
<a href="index04.php">Защищенное</a>
<a href="pod.php">Не защищенное</a>
</body>
</html>
<?
