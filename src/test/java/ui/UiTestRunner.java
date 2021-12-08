package ui;
import com.intuit.karate.junit5.Karate;

public class UiTestRunner {
  @Karate.Test
  Karate test() {
    return Karate.run().tags("@ui").relativeTo(getClass());
  } 
}