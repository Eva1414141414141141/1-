<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $data = json_decode(file_get_contents("php://input"), true);
    if (isset(getallheaders()['Authorization'])) {
        echo"Авторизация прошла успешно";
    } else {
        echo"Ошибка авторизации";
    }
}
?>