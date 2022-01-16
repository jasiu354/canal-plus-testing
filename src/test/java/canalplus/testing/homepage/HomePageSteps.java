package canalplus.testing.homepage;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import java.io.IOException;

public class HomePageSteps {
    HomePage homePage;

    public HomePageSteps() {
        this.homePage = new HomePage();
    }


    @Given("^A user navigates to HomePage$")
    public void aUserNavigatesToHomePage() {
        homePage.goToHomePage();
    }

    @And("^I click on accept button$")
    public void clickOn() {
        try {
            homePage.clickOn(HomePageElements.agreementAcceptButton);
        }
        catch (Exception ignored){

        }
    }

    @And("^I wait for \"([^\"]*)\" seconds$")
    public void waitFor(String x) {
        homePage.waitForXSeconds(Integer.parseInt(x));
    }

    @And("^I log in$")
    public void logIn() throws IOException {
        homePage.clickOn(HomePageElements.accountImageIcon);
        homePage.clickOn(HomePageElements.logInButtonStartingPage);
        homePage.sendKeys(HomePageElements.emailInput, homePage.getUserName());
        homePage.sendKeys(HomePageElements.passwordInput, homePage.getUserPassword());
        homePage.clickOn(HomePageElements.logInButtonLoggingPage);
    }

    @Then("^I wait for logo to be displayed$")
    public void waitForLogo(){
        homePage.waitForElementToBeDisplayed(HomePageElements.logo);
    }

    @Then("^I verify if site is correctly loaded$")
    public void correctlyLoaded(){
        homePage.waitForElementToBeDisplayed(HomePageElements.mainSiteLogo);
    }


}
