<?php
$host = "localhost";
$user = "student_admin";
$pass = "admin123";
$db = "student_management";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
