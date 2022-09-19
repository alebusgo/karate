package features.paypal.orders;

import com.intuit.karate.junit5.Karate;

public class CreationOrdersRunner {

    @Karate.Test
    Karate testOrderCreation(){
        return Karate.run("orderscreation").relativeTo(getClass());
    }

}
