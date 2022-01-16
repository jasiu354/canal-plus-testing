package canalplus.testing.homepage;
import canalplus.testing.basepage.BasePage;
import org.openqa.selenium.support.PageFactory;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;


public class HomePage extends BasePage {

    private static final String HOME_PAGE_URL = "https://www.canalplus.com/";

    HomePage() {
        PageFactory.initElements(driver, this);
    }

    void goToHomePage(){
        driver.get(HOME_PAGE_URL);
        wait.forLoading(5);
    }


    String getUserName() throws IOException {
        String userConfig = "user.properties";
        Properties userProps = new Properties();
        userProps.load(new FileInputStream(userConfig));
        return userProps.getProperty("username");
    }

    String getUserPassword() throws IOException {
        String userConfig = "user.properties";
        Properties userProps = new Properties();
        userProps.load(new FileInputStream(userConfig));
        return userProps.getProperty("password");
    }
}
