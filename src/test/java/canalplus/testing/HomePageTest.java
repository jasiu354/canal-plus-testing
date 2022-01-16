package canalplus.testing;

import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/canalplus/testing/HomePage.feature"},
        plugin = {"pretty"},
        glue = {"canalplus.testing.homepage", "canalplus.testing.infrastructure.driver"})

public class HomePageTest {
}


