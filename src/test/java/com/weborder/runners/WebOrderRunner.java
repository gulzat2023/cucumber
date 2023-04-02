package com.weborder.runners;
/*
These are Interview Questions:

   *Runner class is a way to run your all feature files from here. Regression, smoke...etc
   *@RunWith --> Annotation comes from JUnit and it executes the feature file steps
   *@CucumberOptions --> It a special annotation that have some keyword inside
      **features -->this is the location of feature files (this one should be "CONTENT ROOT")
      **glue --> This is the location of step definitions file. (this one should be "SOURCE ROOT")
      **dryRun -->this is a way to get snips without executing the whole steps from beginning
      **tags --> is a way to specialize your scenario for the specific tag(regression, smoke)(filtration)
      **plugin -->Is a way to integrate specific condition for the keyword. It is mostly used for report card.
*/

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/weborder", //feature files
        glue= "com/weborder/stepDefinitions", //step definitions
        dryRun = false, //getting snips without executing
        tags = "@regression",
        plugin = {"pretty", "html:target/uiReport.html","rerun:target/uiFailedTests.txt"}
        //and refers to one scenario
        //or refers to multiple scenarios
)
public class WebOrderRunner {


}
