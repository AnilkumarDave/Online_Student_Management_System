# ⚠️ Risk & Issues Log — Online Student Management System

This log documents **risks and issues identified during the project** along with their impact, mitigation strategies, owners, and status.

| ID  | Risk / Issue                           | Impact                                 | Mitigation                                      | Owner   | Status |
|-----|----------------------------------------|----------------------------------------|-------------------------------------------------|---------|--------|
| R1  | Database connection failure            | System inaccessible, admin cannot login | Use correct credentials; test connection locally | Admin/Dev | Closed |
| R2  | SQL Injection vulnerability            | Data breach or corruption               | Sanitize input; use prepared statements        | Dev     | Open   |
| R3  | Server (XAMPP) not running             | Website inaccessible                    | Start Apache & MySQL; check ports             | Admin   | Closed |
| R4  | Password hash mismatch                  | Admin unable to login                   | Use consistent `password_hash()` method       | Dev     | Closed |
| R5  | Accidental deletion of student data    | Loss of critical information            | Backup database regularly; enable export      | Admin   | Open   |
| R6  | Browser compatibility issues           | Users unable to access full functionality | Test across Chrome, Firefox, Edge             | Dev     | Open   |
| R7  | Improper data validation               | Incorrect grades or attendance recorded | Implement server-side validation              | Dev     | Open   |
| R8  | Large number of students slowing system | Slow page load / report generation delay | Optimize queries; use indexing in DB          | Dev     | Open   |
