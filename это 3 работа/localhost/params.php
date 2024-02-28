<?php
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $token = $_GET['token'];
    if (!empty($token)) {
        echo "Авторизован";
    } else {
        // header("HTTP/1.1 401 Unauthorized");
        echo "Ошибка авторизации: токен отсутствует";
    }

} else {
    // header("HTTP/1.1 405 Method Not Allowed");
    echo "Метод не разрешен, используйте GET запрос";
}
