package features.paypal.parallel;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class ParallelRunnerWalkthroughs {

    @Test
    void testParallelW() {
        Results results = Runner.path("classpath:features").tags("@walkthrough").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
