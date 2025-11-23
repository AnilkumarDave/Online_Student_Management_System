package com.anildave.onlinestudentmgmt;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public abstract class BaseUiTest {

    protected WebDriver driver;
    protected String BASE_URL = "http://localhost/Online_Student_Management_System/";

    @BeforeEach
    void setUp() {
        // If using WebDriverManager, it can be added here to manage driver binaries automatically.
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

    @AfterEach
    void tearDown() {
        if (driver != null) {
            driver.quit();
        }
    }
}
