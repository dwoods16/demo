package api;
import com.intuit.karate.junit5.Karate;

public class ApiTestRunner {
  @Karate.Test
  Karate test() {
    return Karate.run().tags("@api").relativeTo(getClass());
  } 
}