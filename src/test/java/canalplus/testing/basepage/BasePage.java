package canalplus.testing.basepage;

import canalplus.testing.infrastructure.driver.Setup;
import canalplus.testing.infrastructure.driver.Wait;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.util.concurrent.TimeUnit;

public class BasePage {

    protected WebDriver driver;
    protected Wait wait;

    public BasePage() {
        this.driver = Setup.driver;
        this.wait = new Wait(this.driver);
    }

    public WebDriver getDriver() {
        return driver;
    }

    public Wait getWait() {
        return wait;
    }

    public void waitForElementToBeDisplayed(String xpath) {
        wait.forElementToBeDisplayed(10, driver.findElement(By.xpath(xpath)), "Logo");
    }

    public void clickOn(String xpath){
        driver.findElement(By.xpath(xpath)).click();
    }

    public void waitForXSeconds(int x){
        driver.manage().timeouts().implicitlyWait(x, TimeUnit.SECONDS);
    }

    public void sendKeys(String xpath, String key) {
        driver.findElement(By.xpath(xpath)).sendKeys(key);
    }
}
