package features.paypal.callanotherfeature;

import com.intuit.karate.junit5.Karate;

public class CreationOrdersAnotherRunner {

    @Karate.Test
    Karate testOrderCreation(){
        return Karate.run("orderscreationanother").relativeTo(getClass());
    }

}
