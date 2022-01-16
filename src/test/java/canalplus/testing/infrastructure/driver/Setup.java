package canalplus.testing.infrastructure.driver;

import io.cucumber.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

public class Setup {

    public static WebDriver driver;

    @Before
    public static void setWebDriver() {
        setWebDriver(System.getProperty("browser"));
    }


    public static void setWebDriver(String browser) {
        if (browser == null) {
            browser = "chrome";
        }
        switch (browser) {
            case "chrome":
                System.setProperty("webdriver.chrome.driver","chromedriver.exe");
                driver = new ChromeDriver();
                driver.manage().window().maximize();
                break;
            case "firefox":
                System.setProperty("webdriver.gecko.driver","geckodriver.exe");
                driver = new FirefoxDriver();
                driver.manage().window().maximize();
                break;
            case "edge":
                System.setProperty("webdriver.edge.driver","edgedriver.exe");
                driver = new EdgeDriver();
                break;
            case "opera":
                System.setProperty("webdriver.opera.driver","operadriver.exe");
                driver = new EdgeDriver();
                break;
            case "safari":
                System.setProperty("webdriver.safari.driver","safaridriver");
                driver = new SafariDriver();
                break;
            default:
                throw new IllegalArgumentException("Browser \"" + browser + "\" isn't supported.");
        }
    }
}
