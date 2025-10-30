<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$subject_filter = "";
if(isset($_GET['subject']) && $_GET['subject'] != ""){
    $subject_filter = $_GET['subject'];
    $sql = "SELECT g.subject, s.id, s.name, g.grade
            FROM grades g
            JOIN students s ON g.student_id = s.id
            WHERE g.subject='$subject_filter'
            ORDER BY s.id ASC";
} else {
    $sql = "SELECT g.subject, s.id, s.name, g.grade
            FROM grades g
            JOIN students s ON g.student_id = s.id
            ORDER BY s.id ASC, g.subject ASC";
}

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Grades - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Grades Records</h2>

    <form method="GET" action="">
        Filter by Subject: <input type="text" name="subject" value="<?php echo $subject_filter; ?>">
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
