<?php
error_reporting(0);
include_once 'controllers/db.php';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Подверженное от XSS приложение</title>
	<link rel="stylesheet" type="text/css" href="assetss\style.css">
</head>
<body>
    <h1>Подверженное</h1>
<form action="" method="post">
    <label for="name">Имя:</label><br>
    <input type="text" id="name" name="name"><br>
    <input type="submit" value="Submit">
    <!-- <script>alert('XSS Attack')</script> -->
</form>
</body>
<?php
$name = $_POST['name'];
echo "Привет, $name!";
?>
</html>
