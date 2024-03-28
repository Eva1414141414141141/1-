<!DOCTYPE html>
<html>
<head>
    <title>Защищенное от XSS приложение</title>
</head>
<body>
<h1>Защищенное</h1>
<form method="post" action="">
    <input type="text" name="name" placeholder="Введите ваше имя">
    <button type="submit">Отправить</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = htmlspecialchars($_POST['name'], ENT_QUOTES); //Преобразовывает специальные символы в HTML-сущности
    echo "<p>Привет, $name!</p>";
}
?>

</body>
</html>