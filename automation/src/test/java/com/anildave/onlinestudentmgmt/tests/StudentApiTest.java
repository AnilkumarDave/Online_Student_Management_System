package com.anildave.onlinestudentmgmt.tests;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;

public class StudentApiTest {

    @Test
    void getStudentsEndpointReturnsOkJson() {
        // Configure Extent Reports (simple example)
        ExtentSparkReporter reporter = new ExtentSparkReporter("build/reports/extent-student-api.html");
        ExtentReports extent = new ExtentReports();
        extent.attachReporter(reporter);
        ExtentTest test = extent.createTest("GET /students.php returns 200 and JSON");

        // Base URI for the API (Anil can adjust the path to match his implementation)
        RestAssured.baseURI = "http://localhost/Online_Student_Management_System/api";

        test.info("Sending GET request to /students.php");

        given()
            .when()
                .get("/students.php")
            .then()
                .statusCode(200)
                .contentType(ContentType.JSON);

        test.pass("Received HTTP 200 and JSON content type from /students.php");

        extent.flush();
    }
}
