Online Student Management System (Academic Project – BCA, modernised)

📅 Project Duration: 15 August 2014 – 30 September 2014 (≈ 1.5 months, Part-Time)  
Academic Year: Bachelor of Computer Application (BCA)  
Institution: Shree S. V. Patel College of Computer Science & Business Management, Surat, India  
University: Veer Narmad South Gujarat University  
Mentor: Professor Kaushik Chauhan 

🏫 Project Overview
This project was originally built as part of my BCA coursework in 2014.

It is a web-based Online Student Management System developed with PHP and MySQL.

Key features:

- Admin module to manage student records (add, update, delete)
- Attendance management for each student and subject
- Grade/marks management with basic reports
- Simple dashboard showing key counts and recent updates

In October 2025, the project was modernised for PHP 8.2 and refreshed for portfolio purposes.

🎯 Project Objectives

- Provide a central place for basic student data, attendance and grades  
- Allow administrators to maintain records through a simple web UI  
- Store data in MySQL with basic validation and relationships  
- Generate simple lists and reports to support academic administration  

⚙️ Modernisation Note

| Originally Built | Modernised & Uploaded |
|------------------|------------------------|
| Aug–Sep 2014     | Oct 2025              |

Modern updates include:

- ✅ Improved login security using `password_hash()`  
- ✅ Cleaned and normalised MySQL schema  
- ✅ Updated UI with more consistent layout and styling  
- ✅ PHP 8.2 compatibility and removal of deprecated functions  

🧩 System Features

👨‍💻 Admin Panel

- Manage student records (create, update, deactivate)  
- Record and update attendance for selected dates/subjects  
- Record marks/grades and view basic performance summaries  
- View simple lists and search/filter by name, ID or status  

📂 Sample Data (example)

| Category        | Examples                          |
|-----------------|-----------------------------------|
| Students        | 20+ demo student records          |
| Subjects        | 5–8 subjects per sample class     |
| Attendance data | Pre-inserted for demonstration    |
| Admin user      | Single admin login for demo       |

💻 Project Files (core PHP)

| File                     | Description                       |
|--------------------------|-----------------------------------|
| `index.php`              | Admin login                       |
| `dashboard.php`          | Simple dashboard/home page        |
| `students.php`           | List/manage students              |
| `attendance.php`         | Manage attendance                 |
| `grades.php`             | Manage grades/marks               |
| `db.php`                 | Database connection               |
| `style.css`              | Shared CSS styles                 |
| `README.md`              | Project documentation             |

⚠️ Limitations

| Limitation                            | Description                             | Possible Improvement                                  |
|---------------------------------------|-----------------------------------------|-------------------------------------------------------|
| Single admin role                     | Only one admin account used             | Add multiple roles (Admin, Teacher, Clerk)           |
| Local deployment                      | Designed for local XAMPP/WAMP           | Deploy on cloud/remote server                        |
| Basic validation and security         | Limited protection against misuse       | Harden input validation, add CSRF protection, HTTPS  |
| Simple reporting                      | Basic lists and counts only             | Add richer summary and trend reports                 |

🌟 Advantages

- ✅ Simple, easy-to-understand design for academic demonstration  
- ✅ Centralised management of student, attendance and grade data  
- ✅ Straightforward PHP + MySQL setup (XAMPP/WAMP)  
- ✅ Modernised for current PHP versions  

⏱️ Project Timeline (original build)

| Week | Task                                         |
|------|----------------------------------------------|
| Week 1 | Requirement gathering, database design    |
| Week 2 | Setup MySQL & PHP environment             |
| Week 3 | Student CRUD and login functionality      |
| Week 4 | Attendance and grades modules             |
| Week 5 | Basic reporting and testing               |
| Week 6 | Documentation and submission              |

🔮 Future Scope

- Add parent/guardian logins  
- Add export to CSV/Excel for reports  
- Add richer analytics (attendance trends, grade distributions)  
- Implement role-based access control and additional security  

🚀 Quick Setup

```bash
# Clone repository
git clone https://github.com/AnilkumarDave/Online_Student_Management_System.git
cd Online_Student_Management_System
```

Import the project database into phpMyAdmin (for example `student_management_system.sql`).

Update `db.php` if credentials differ:

```php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "student_management_system";
$conn = new mysqli($servername, $username, $password, $dbname);
```

Start Apache & MySQL in XAMPP/WAMP and visit in a browser:

```text
http://localhost/Online_Student_Management_System/index.php
```

exit

## 🔧 Test Automation & QA (Java + Selenium + JUnit, Gradle, RestAssured, Extent Reports)

Alongside the core PHP + MySQL application, this project now includes a
separate **Java-based UI and API test suite** in the `/automation` folder.

The test suite demonstrates how I:

- Use **Java** with **JUnit 5** to structure automated tests  
- Use **Selenium WebDriver** to automate browser interactions with the
  login and student dashboard screens  
- Use **RestAssured** to test simple JSON endpoints (for example, a student list API)  
- Use **Extent Reports** to generate readable HTML summaries of the automated tests  
- Build and run tests with **Gradle**, and integrate them into a simple
  **Jenkins** pipeline  

This reflects how an academic PHP project can be treated more like a production
application with automated regression tests for both UI and basic APIs.

---

## 📜 Disclaimer

This project was developed for academic purposes in 2014 and modernised in 2025.  
All data is fictional and intended for educational/demo purposes only.

---

## ✨ Author

Name: Anilkumar Dave  
Email: daveanil48@gmail.com
