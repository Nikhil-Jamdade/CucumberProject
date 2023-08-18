package stepdefs;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/java/features",
		plugin = {"pretty", "html;target/html-cucumber", "json:targer/cucumber.json"},//creates a html report
		monochrome = true, //hides all unsupported texts
		glue = "stepdefs",
		tags = {"@Sanity"}
//		tags = {"@WIP"}
//		tags = {"@WIP or @Sanity"} Scenario should have either tag
//		tags = {"@WIP and @Sanity"}  Scenario should have both tags
//		tags = {"@Calculator"} feature level tag
//		tags = {"not @WIP"} Run all scenarios except WIP
//		tags = {"@Browser and not @WIP"} Run all browser scenarios except WIP
		)
public class TestRunner {

			
	
}
