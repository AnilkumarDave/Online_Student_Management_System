<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$search = "";
if(isset($_GET['search'])){
    $search = $_GET['search'];
    $sql = "SELECT * FROM students WHERE name LIKE '%$search%' OR id LIKE '%$search%'";
} else {
    $sql = "SELECT * FROM students";
}
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Students - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Students List</h2>
    <form method="GET" action="">
        Search: <input type="text" name="search" value="<?php echo $search; ?>">
        <input type="submit" value="Search">
    </form>
    <br>
    <a href="add_student.php" class="button">Add New Student</a>
    <br><br>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Class</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Actions</th>
        </tr>
        <?php
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                echo "<tr>
                        <td>".$row['id']."</td>
                        <td>".$row['name']."</td>
                        <td>".$row['class']."</td>
                        <td>".$row['email']."</td>
                        <td>".$row['contact']."</td>
                        <td>
                            <a href='edit_student.php?id=".$row['id']."' class='button'>Edit</a> 
                            <a href='delete_student.php?id=".$row['id']."' class='button' onclick=\"return confirm('Are you sure?')\">Delete</a>
                        </td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='6'>No students found</td></tr>";
        }
        ?>
    </table>
    <a href="dashboard.php" class="button">Back to Dashboard</a>
</div>
</body>
</html>
