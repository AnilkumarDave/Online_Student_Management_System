<?php
include('config.php');
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}

$date_filter = "";
if(isset($_GET['date']) && $_GET['date'] != ""){
    $date_filter = $_GET['date'];
    $sql = "SELECT a.*, s.name FROM attendance a JOIN students s ON a.student_id = s.id WHERE a.date='$date_filter' ORDER BY s.id ASC";
} else {
    $sql = "SELECT a.*, s.name FROM attendance a JOIN students s ON a.student_id = s.id ORDER BY a.date DESC, s.id ASC";
}
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Attendance Records - Student Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h2>Attendance Records</h2>
    <form method="GET" action="">
        Filter by Date: <input type="date" name="date" value="<?php echo $date_filter; ?>">
        <input type="submit" value="Filter">
    </form>
    <br>
    <table>
        <tr>
            <th>Date</th>
            <th>Student ID</th>
            <th>Name</th>
            <th>Status</th>
        </tr>
        <?php
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                // Apply colored label
                $status = strtolower($row['status']); // present or absent
                echo "<tr>
                        <td>".$row['date']."</td>
                        <td>".$row['student_id']."</td>
                        <td>".$row['name']."</td>
                        <td><span class='label $status'>".$row['status']."</span></td>
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
