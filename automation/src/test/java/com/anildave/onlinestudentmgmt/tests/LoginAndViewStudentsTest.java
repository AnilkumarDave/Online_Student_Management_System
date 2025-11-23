package com.anildave.onlinestudentmgmt.tests;

import com.anildave.onlinestudentmgmt.BaseUiTest;
import com.anildave.onlinestudentmgmt.pages.LoginPage;
import com.anildave.onlinestudentmgmt.pages.StudentDashboardPage;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class LoginAndViewStudentsTest extends BaseUiTest {

    @Test
    void adminCanLoginAndViewStudents() {
        LoginPage loginPage = new LoginPage(driver);
        loginPage.open(BASE_URL);

        // Demo credentials – these should match the sample data in the PHP app.
        loginPage.loginAs("admin", "admin123");

        StudentDashboardPage dashboardPage = new StudentDashboardPage(driver);

        Assertions.assertTrue(dashboardPage.isStudentsTableVisible(),
                "Expected the students table to be visible on the dashboard.");
    }
}
