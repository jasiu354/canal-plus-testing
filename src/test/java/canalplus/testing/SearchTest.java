package canalplus.testing;

import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/canalplus/testing/Search.feature"},
        strict = false, plugin = {"pretty"})
public class SearchTest {
}
