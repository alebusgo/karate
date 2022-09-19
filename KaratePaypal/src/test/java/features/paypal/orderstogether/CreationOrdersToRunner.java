package features.paypal.orderstogether;

import com.intuit.karate.junit5.Karate;

public class CreationOrdersToRunner {

    @Karate.Test
    Karate testOrderCreationTo(){
        return Karate.run("orderscreationtog").relativeTo(getClass());
    }

}
