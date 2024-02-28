<?php
include_once 'controllers/db.php';
if ($_SESSION['user']) {
    $_SESSION['error']="проблем ты не админ";
	header("Location:/home.php");

}
?>
    <!DOCTYPE html>
    <html lang='en'>
        <head>
            <meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <title>приложение</title>
        </head>
        <body>
            <nav>
                <a href='home.php'>Главная</a>
                <a href='admin.php'>Важные док</a>
                <a href="/">ВЫХОД</a>
            </nav>
            <h1>важные документы</h1>
        </body>
        </html>
         