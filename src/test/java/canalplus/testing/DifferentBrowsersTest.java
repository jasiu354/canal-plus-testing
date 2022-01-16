package canalplus.testing;

import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/canalplus/testing/DifferentBrowsers.feature"},
        plugin = {"pretty"},
        glue = {"canalplus.testing.differentbrowsers", "canalplus.testing.homepage"},
        tags = {"@default"})
public class DifferentBrowsersTest {
}
