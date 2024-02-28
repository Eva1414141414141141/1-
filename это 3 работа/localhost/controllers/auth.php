<?php
include 'db.php';
// АВТОРИЗАЦИЯ. получилось 2 в 1

$login_auth=$_POST['login_auth'];
$pass_auth=$_POST['pass_auth'];
$auth=$_POST['auth'];


if ($auth) {
    if ($login_auth && $pass_auth) {
        $out_auth_user="SELECT * FROM `users` WHERE login='$login_auth' AND pass='$pass_auth'";
		$run_auth_users=mysqli_query($connect,$out_auth_user);
		$num_user=mysqli_num_rows($run_auth_users);
        if ($out_user['role']==1) {
            $_SESSION['admin']=array(
             'id' => $out_user['id'], 
             'login' => $out_user['login'], 
             'surname' => $out_user['surname'], 
             'name' => $out_user['name'], 
             'l_name' => $out_user['l_name'], 
             'email' => $out_user['email'],
             'role' => $out_user['role'], 
             'status' => $out_user['status'],
             'avatar' => $out_user['avatar']
             ); 
             $_SESSION['mess']="Успешная авторизация";
             header("Location:../home.php");
         }
        else if ($num_user==1) {
            $out_userss=mysqli_fetch_array($run_auth_users);
            $_SESSION['user']=array(
                'id' => $out_userss['id'], 
                'login' => $out_userss['login'], 
                'surname' => $out_userss['surname'], 
                'name' => $out_userss['name'], 
                'l_name' => $out_userss['l_name'], 
                'email' => $out_userss['email'],
                'city' => $out_userss['city'],
                'role' => $out_userss['role'], 
                'status' => $out_userss['status'],
                'avatar' => $out_userss['avatar']
            );
            $_SESSION['mess']="Успешная авторизация";
            header("Location:../home.php");
        }
        else
		{
			$_SESSION['mess_error']="Такого пользователя нет";
			header("Location:../index.php");
		}
    }
    else
    {
        $_SESSION['mess_error']="Заполните все поля";
        echo $_SESSION['error'];
	    unset($_SESSION['error']);
        header("Location:../index.php");
    }
}
?>