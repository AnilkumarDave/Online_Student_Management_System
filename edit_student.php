<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$id = $_GET['id'];
$sql = "SELECT * FROM students WHERE id=$id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();

if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $class = $_POST['class'];
    $email = $_POST['email'];
    $contact = $_POST['contact'];

    $update = "UPDATE students SET name='$name', class='$class', email='$email', contact='$contact' WHERE id=$id";
    if($conn->query($update) === TRUE){
        $message = "Student updated successfully!";
    } else {
        $message = "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Student - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Edit Student</h2>
    <?php if(isset($message)) echo "<p style='color:green;'>$message</p>"; ?>
    <form method="POST" action="">
        Name: <input type="text" name="name" value="<?php echo $row['name']; ?>" required>
        Class: <input type="text" name="class" value="<?php echo $row['class']; ?>" required>
        Email: <input type="email" name="email" value="<?php echo $row['email']; ?>">
        Contact: <input type="text" name="contact" value="<?php echo $row['contact']; ?>">
        <input type="submit" name="submit" value="Update Student">
    </form>
    <a href="view_students.php" class="button">Back to Students List</a>
</div>
</body>
</html>
