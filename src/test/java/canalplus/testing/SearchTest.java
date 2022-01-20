package canalplus.testing;

import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/canalplus/testing/Search.feature"},
        plugin = {"pretty"},
        glue = {"canalplus.testing.homepage", "canalplus.testing.infrastructure.driver", "canalplus.testing.searchpage"},
        tags = {"@missingLetters", "@lastLetterEachWord"})
public class SearchTest {
}
