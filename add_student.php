<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $class = $_POST['class'];
    $email = $_POST['email'];
    $contact = $_POST['contact'];

    $sql = "INSERT INTO students (name, class, email, contact) VALUES ('$name', '$class', '$email', '$contact')";
    if($conn->query($sql) === TRUE){
        $message = "Student added successfully!";
    } else {
        $message = "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Student - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Add New Student</h2>
    <?php if(isset($message)) echo "<p style='color:green;'>$message</p>"; ?>
    <form method="POST" action="">
        Name: <input type="text" name="name" required>
        Class: <input type="text" name="class" required>
        Email: <input type="email" name="email">
        Contact: <input type="text" name="contact">
        <input type="submit" name="submit" value="Add Student">
    </form>
    <a href="view_students.php" class="button">Back to Students List</a>
</div>
</body>
</html>
