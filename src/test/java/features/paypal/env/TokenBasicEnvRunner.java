package features.paypal.env;

import com.intuit.karate.junit5.Karate;

public class TokenBasicEnvRunner {

    @Karate.Test
    Karate testTokenRequest(){
        return Karate.run("tokenbasicenv").relativeTo(getClass());
    }

}
