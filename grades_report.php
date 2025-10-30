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
    $sql = "SELECT g.subject, s.id, s.name, g.grade
            FROM grades g
            JOIN students s ON g.student_id = s.id
            WHERE s.id='$student_filter'
            ORDER BY g.subject ASC";
} else {
    $sql = "SELECT g.subject, s.id, s.name, g.grade
            FROM grades g
            JOIN students s ON g.student_id = s.id
            ORDER BY s.id ASC, g.subject ASC";
}

$result = $conn->query($sql);
$students_list = $conn->query("SELECT * FROM students");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Grades Report - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Grades Report</h2>

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
            <th>Subject</th>
            <th>Grade</th>
        </tr>
        <?php
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $grade = strtoupper($row['grade']);
                $valid_grades = ['A','B','C','D','F'];
                $cls = in_array($grade, $valid_grades) ? $grade : 'default';
                echo "<tr>
                        <td>".$row['id']."</td>
                        <td>".$row['name']."</td>
                        <td>".$row['subject']."</td>
                        <td><span class='label $cls'>".$grade."</span></td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='4'>No grades found</td></tr>";
        }
        ?>
    </table>

    <a href="dashboard.php" class="button">Back to Dashboard</a>
</div>
</body>
</html>
