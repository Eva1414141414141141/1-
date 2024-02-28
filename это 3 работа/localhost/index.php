<?php
error_reporting(0);
include_once 'controllers/db.php';
// 3 задание
$allowedIPs = array("127.0.0.3", "127.0.0.4");
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
	<title>3 задание</title>
	<link rel="stylesheet" type="text/css" href="assetss\style.css">
</head>
<body>
	<!-- <div class="auth_center">
<div class="auth_u">
	<h2>Панель<br>Авторизации</h2>
		<form method="POST" action="controllers\sql.php">
		<input type="text" name="login_auth" placeholder="Логин"><br>
		<input type="password" name="pass_auth" placeholder="Пароль"><br>
		<input type="submit" name="auth" value="Войти">
	    <?php
	    if ($_SESSION['mess_error']) {
	    echo '<font color=red <p class="msg">'.$_SESSION['mess_error'].'</p></font>';
	    }
	    unset($_SESSION['mess_error']);
	    ?><br>
		</form>
</div>
</div> -->
<!-- Тоже 3 заданние -->
<h1>Всё плохо</h1>
<form action="execute.php" method="post">
  Command: <input type="text" name="cmd">
  <input type="submit">
</form>

<h1>Всё хорошо</h1>
<form action="execute_secure.php" method="post">
  Command: <input type="text" name="cmd">
  <input type="submit">
</form>

</body>
</html>
<?
