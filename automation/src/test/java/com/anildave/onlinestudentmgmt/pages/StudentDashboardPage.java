package com.anildave.onlinestudentmgmt.pages;

import lombok.Getter;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

@Getter
public class StudentDashboardPage {

    private final WebDriver driver;

    // Example locator for a student table; Anil can adjust to match actual HTML
    private final By studentsTable = By.cssSelector(".students-table");

    public StudentDashboardPage(WebDriver driver) {
        this.driver = driver;
    }

    public boolean isStudentsTableVisible() {
        return !driver.findElements(studentsTable).isEmpty();
    }
}
