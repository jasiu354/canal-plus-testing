package canalplus.testing.differentbrowsers;

import canalplus.testing.infrastructure.driver.Setup;
import io.cucumber.java.After;
import io.cucumber.java.en.Given;

public class DifferentBrowsers {

    private static final String HOME_PAGE_URL = "https://www.canalplus.com/";


    @Given("^I run a site in \"([^\"]*)\"")
    public void runInChrome(String browser) {
        Setup.setWebDriver(browser.toLowerCase());
        Setup.driver.get(HOME_PAGE_URL);
    }

    @After
    public void closeBrowser(){
        Setup.driver.close();
    }
}
