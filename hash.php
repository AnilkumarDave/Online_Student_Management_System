<?php
$password = "admin123"; // your desired admin password
$hash = password_hash($password, PASSWORD_DEFAULT);
echo "Hashed password: " . $hash;
?>
