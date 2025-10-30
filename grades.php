<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$students_sql = "SELECT * FROM students";
$students_result = $conn->query($students_sql);

if(isset($_POST['submit'])){
    $subject = $_POST['subject'];
    $grades = $_POST['grade'];

    foreach($grades as $student_id => $grade){
        $check_sql = "SELECT * FROM grades WHERE student_id=$student_id AND subject='$subject'";
        $check_result = $conn->query($check_sql);

        if($check_result->num_rows > 0){
            $update_sql = "UPDATE grades SET grade='$grade' WHERE student_id=$student_id AND subject='$subject'";
            $conn->query($update_sql);
        } else {
            $insert_sql = "INSERT INTO grades (student_id, subject, grade) VALUES ($student_id, '$subject', '$grade')";
            $conn->query($insert_sql);
        }
    }
    $message = "Grades saved successfully!";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add/Update Grades - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Add / Update Grades</h2>
    <?php if(isset($message)) echo "<p style='color:green;'>$message</p>"; ?>
    <form method="POST" action="">
        Subject: <input type="text" name="subject" required>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Grade</th>
            </tr>
            <?php
            if($students_result->num_rows > 0){
                while($student = $students_result->fetch_assoc()){
                    echo "<tr>
                            <td>".$student['id']."</td>
                            <td>".$student['name']."</td>
                            <td><input type='text' name='grade[".$student['id']."]'></td>
                          </tr>";
                }
            }
            ?>
        </table>
        <input type="submit" name="submit" value="Save Grades">
    </form>
    <a href="view_grades.php" class="button">View Grades</a>
</div>
</body>
</html>
