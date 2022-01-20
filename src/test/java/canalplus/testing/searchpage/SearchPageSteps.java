package canalplus.testing.searchpage;

import canalplus.testing.infrastructure.driver.Wait;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

public class SearchPageSteps {

    private SearchPage searchResultPage;

    protected Wait wait;

    public SearchPageSteps() {
        this.searchResultPage = new SearchPage();
        this.wait = new Wait(this.searchResultPage.getDriver());
    }

    @Then("^\"([^\"]*)\" is displayed in the first \"([^\"]*)\" results$")
    public void isDisplayedInTheFirstResults(String expectedResult, int nbOfResultsToSearch) {
        Assert.assertTrue(expectedResult + " wasn't found in the first " + nbOfResultsToSearch + " results.",
                this.searchResultPage.isInResults(expectedResult, nbOfResultsToSearch));
    }

    @And("^I click on search icon$")
    public void clickOnSearch(){
        searchResultPage.clickOn(SearchPageElements.searchIcon);
    }

    @And("^I enter \"([^\"]*)\" in search input$")
    public void enterInSearch(String key){
        searchResultPage.sendKeys(SearchPageElements.searchInput, key);
    }

    @Then("^Movie is found \"([^\"]*)\"$")
    public void findMovie(String title) {
        wait.forElementToBeDisplayed(20, searchResultPage.getDriver().findElement(By.xpath(SearchPageElements.film + title + "']")), "Film");
        searchResultPage.getDriver().close();
    }
}
