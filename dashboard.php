<?php
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Student Management</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f4f7f8;
}

.sidebar {
    height: 100%;
    width: 250px;
    position: fixed;
    left: 0;
    top: 0;
    background: linear-gradient(180deg, #2980b9, #6dd5fa);
    padding-top: 20px;
    transition: 0.3s;
    overflow-x: hidden;
    color: #fff;
}

.sidebar h3 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 22px;
}

.sidebar a {
    padding: 12px 20px;
    text-decoration: none;
    color: #fff;
    display: flex;
    align-items: center;
    gap: 10px;
    border-radius: 4px;
    margin: 5px 10px;
    transition: 0.3s;
}

.sidebar a:hover {
    background-color: rgba(255,255,255,0.2);
}

.sidebar a.logout {
    background-color: #e74c3c;
    margin-top: 20px;
}

.main {
    margin-left: 250px;
    padding: 20px;
    transition: 0.3s;
}

.toggle-btn {
    position: fixed;
    left: 10px;
    top: 10px;
    font-size: 24px;
    cursor: pointer;
    color: #2980b9;
}

.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    margin-top: 30px;
}

.card {
    flex: 1 1 200px;
    background: #fff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    text-align: center;
    transition: transform 0.2s;
}

.card:hover {
    transform: translateY(-5px);
}

.card h3 {
    margin: 10px 0;
    font-size: 20px;
}

.card p {
    color: #7f8c8d;
    font-size: 16px;
}

@media screen and (max-width: 768px){
    .sidebar {width: 0; padding:0;}
    .main {margin-left:0;}
}
</style>
</head>
<body>

<div class="toggle-btn" onclick="toggleSidebar()"><i class="fas fa-bars"></i></div>

<div class="sidebar" id="sidebar">
    <h3>Admin Menu</h3>
    <a href="add_student.php"><i class="fas fa-user-plus"></i> Add Student</a>
    <a href="view_students.php"><i class="fas fa-users"></i> View Students</a>
    <a href="attendance.php"><i class="fas fa-calendar-check"></i> Mark Attendance</a>
    <a href="view_attendance.php"><i class="fas fa-eye"></i> View Attendance</a>
    <a href="attendance_report.php"><i class="fas fa-file-alt"></i> Attendance Report</a>
    <a href="grades.php"><i class="fas fa-pen-square"></i> Add/Update Grades</a>
    <a href="view_grades.php"><i class="fas fa-chart-bar"></i> View Grades</a>
    <a href="logout.php" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<div class="main">
    <h2>Welcome, <?php echo $_SESSION['admin']; ?>!</h2>
    <div class="card-container">
        <div class="card">
            <h3>Total Students</h3>
            <p>120</p>
        </div>
        <div class="card">
            <h3>Attendance Today</h3>
            <p>85%</p>
        </div>
        <div class="card">
            <h3>Average Grades</h3>
            <p>B+</p>
        </div>
        <div class="card">
            <h3>New Registrations</h3>
            <p>5</p>
        </div>
    </div>
</div>

<script>
function toggleSidebar(){
    var sb = document.getElementById("sidebar");
    if(sb.style.width === "250px"){
        sb.style.width = "0";
    } else {
        sb.style.width = "250px";
    }
}
</script>

</body>
</html>
