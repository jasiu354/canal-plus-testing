package canalplus.testing.searchpage;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class SearchPageSteps {

    private SearchPage searchResultPage;

    public SearchPageSteps() {
        this.searchResultPage = new SearchPage();
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
}
