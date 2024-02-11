<?php
include_once 'controllers/db.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>приложение</title>
</head>
<body>
    <nav>
        <a href="home.php">Главная</a>
        <a href="admin.php">Важные док</a>
        <a href="/">ВЫХОД</a>
    </nav>
    <div>
        <?php
        if ($_SESSION['error']) {
            error_reporting(0);
	        echo '<font color=red <p class="msg">'.$_SESSION['error'].'</p></font>';
	        }
	        
	        unset($_SESSION['error']);
        ?>
        <h1>Информация</h1>

    </div>
</body>
</html>