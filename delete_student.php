<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$id = $_GET['id'];
$sql = "DELETE FROM students WHERE id=$id";

if($conn->query($sql) === TRUE){
    header("Location: view_students.php");
    exit();
} else {
    echo "Error: " . $conn->error;
}
