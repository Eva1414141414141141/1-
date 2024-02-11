<?php
include 'db.php';

    $login_auth = $_POST['login_auth'];
    $pass_auth = $_POST['pass_auth'];
    $auth = $_POST['auth'];

    if ($auth) {
        if ($login_auth && $pass_auth) {
            $stmt = $conn->prepare('SELECT * FROM users WHERE `login`=:login AND `pass`=:pass');
            $stmt->bindParam(':login', $login_auth);
            $stmt->bindParam(':pass', $pass_auth);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if ($result) {
                if ($result['role'] == 1) {
                    session_start();
                    $_SESSION['admin'] = array(
                        'id' => $result['id'],
                        'login' => $result['login'], 
                        'surname' => $result['surname'], 
                        'name' => $result['name'], 
                        'l_name' => $result['l_name'], 
                        'email' => $result['email'],
                        'role' => $result['role'], 
                        'status' => $result['status'],
                        'avatar' => $result['avatar']
                    );
                    header("Location:../home.php");
                    exit;
                } else {
                    session_start();
                    $_SESSION['user'] = array(
                        'id' => $result['id'],
                        'login' => $result['login'], 
                        'surname' => $result['surname'], 
                        'name' => $result['name'], 
                        'l_name' => $result['l_name'], 
                        'email' => $result['email'],
                        'role' => $result['role'], 
                        'status' => $result['status'],
                        'avatar' => $result['avatar']
                    );
                    header("Location:../home.php");
                    exit;
                }
            } else {
                $_SESSION['mess_error'] = "Неверный логин или пароль";
                header("Location:../index.php");
            }
            
        } else {
            $_SESSION['mess_error'] = "Заполните все поля";
            header("Location:../index.php");
        }
    } else {
        $_SESSION['mess_error'] = "Не выполнен запрос на авторизацию";
        header("Location:../index.php");
    }
