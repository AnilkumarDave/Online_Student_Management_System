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
    $date = $_POST['date'];
    $statuses = $_POST['status'];

    foreach($statuses as $student_id => $status){
        $check_sql = "SELECT * FROM attendance WHERE student_id=$student_id AND date='$date'";
        $check_result = $conn->query($check_sql);
        if($check_result->num_rows > 0){
            $update_sql = "UPDATE attendance SET status='$status' WHERE student_id=$student_id AND date='$date'";
            $conn->query($update_sql);
        } else {
            $insert_sql = "INSERT INTO attendance (student_id, date, status) VALUES ($student_id, '$date', '$status')";
            $conn->query($insert_sql);
        }
    }
    $message = "Attendance saved successfully!";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mark Attendance - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Mark Attendance</h2>
    <?php if(isset($message)) echo "<p style='color:green;'>$message</p>"; ?>
    <form method="POST" action="">
        Date: <input type="date" name="date" value="<?php echo date('Y-m-d'); ?>" required>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Status</th>
            </tr>
            <?php
            if($students_result->num_rows > 0){
                while($student = $students_result->fetch_assoc()){
                    echo "<tr>
                            <td>".$student['id']."</td>
                            <td>".$student['name']."</td>
                            <td>
                                <select name='status[".$student['id']."]'>
                                    <option value='Present'>Present</option>
                                    <option value='Absent'>Absent</option>
                                </select>
                            </td>
                          </tr>";
                }
            }
            ?>
        </table>
        <input type="submit" name="submit" value="Save Attendance">
    </form>
    <a href="view_attendance.php" class="button">View Attendance Records</a>
</div>
</body>
</html>
