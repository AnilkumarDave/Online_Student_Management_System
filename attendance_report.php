<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$student_filter = "";
if(isset($_GET['student']) && $_GET['student'] != ""){
    $student_filter = $_GET['student'];
    $sql = "SELECT s.id, s.name,
                   SUM(CASE WHEN a.status='Present' THEN 1 ELSE 0 END) AS present_count,
                   SUM(CASE WHEN a.status='Absent' THEN 1 ELSE 0 END) AS absent_count
            FROM students s
            LEFT JOIN attendance a ON s.id = a.student_id
            WHERE s.id='$student_filter'
            GROUP BY s.id";
} else {
    $sql = "SELECT s.id, s.name,
                   SUM(CASE WHEN a.status='Present' THEN 1 ELSE 0 END) AS present_count,
                   SUM(CASE WHEN a.status='Absent' THEN 1 ELSE 0 END) AS absent_count
            FROM students s
            LEFT JOIN attendance a ON s.id = a.student_id
            GROUP BY s.id";
}
$result = $conn->query($sql);
$students_list = $conn->query("SELECT * FROM students");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Attendance Report - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Attendance Report</h2>
    <form method="GET" action="">
        Filter by Student:
        <select name="student">
            <option value="">All</option>
            <?php while($stu = $students_list->fetch_assoc()){ 
                $selected = ($student_filter == $stu['id']) ? "selected" : "";
            ?>
                <option value="<?php echo $stu['id']; ?>" <?php echo $selected; ?>><?php echo $stu['name']; ?></option>
            <?php } ?>
        </select>
        <input type="submit" value="Filter">
    </form>
    <br>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Present</th>
            <th>Absent</th>
        </tr>
        <?php
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                echo "<tr>
                        <td>".$row['id']."</td>
                        <td>".$row['name']."</td>
                        <td>".$row['present_count']."</td>
                        <td>".$row['absent_count']."</td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='4'>No records found</td></tr>";
        }
        ?>
    </table>
    <a href="dashboard.php" class="button">Back to Dashboard</a>
</div>
</body>
</html>
