# Test Automation for Online Student Management System

This folder contains a Java-based UI and API test automation project for the
**Online Student Management System** (PHP + MySQL) application.

The goal is to demonstrate how I use:

- Java with JUnit 5 for structured automated tests
- Selenium WebDriver for browser automation of key screens
- RestAssured for simple API testing
- Extent Reports for human-readable HTML test reports
- Gradle for dependency management and builds
- Jenkins for CI, so tests can run automatically on each push

## Project structure

- `build.gradle` – Gradle configuration, dependencies (Selenium, JUnit 5, RestAssured, Extent Reports, Lombok)
- `src/test/java/com/anildave/onlinestudentmgmt/BaseUiTest.java` – shared WebDriver setup/teardown
- `src/test/java/com/anildave/onlinestudentmgmt/pages/LoginPage.java` – page object for the login page
- `src/test/java/com/anildave/onlinestudentmgmt/pages/StudentDashboardPage.java` – page object for the student dashboard
- `src/test/java/com/anildave/onlinestudentmgmt/tests/LoginAndViewStudentsTest.java` – example UI test
- `src/test/java/com/anildave/onlinestudentmgmt/tests/StudentApiTest.java` – example API test using RestAssured and Extent Reports

## Prerequisites

- JDK 11+ installed  
- Gradle installed (or a Gradle wrapper added)  
- Chrome or another supported browser installed  
- The PHP application running locally, e.g.:

  - `http://localhost/Online_Student_Management_System/index.php`
  - Optional JSON endpoint for API tests, e.g. `http://localhost/Online_Student_Management_System/api/students.php`

## How to run tests locally

From the `automation` folder:

```bash
gradle test
```

By default, the tests assume the application is available at
`http://localhost/Online_Student_Management_System/`. You can change this by
editing the `BASE_URL` in `BaseUiTest.java` and the base URI in `StudentApiTest.java`.

## Running via Jenkins

A simple `Jenkinsfile` is included at the root of the main repository.
When a Jenkins pipeline is created pointing to this repo, it will:

1. Check out the code  
2. Change into the `automation` folder  
3. Run `gradle test`  
4. Archive the test reports  

This demonstrates how automated UI and API tests can be integrated into a CI
pipeline for a small PHP web application.
