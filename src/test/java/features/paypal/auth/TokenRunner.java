package features.paypal.auth;

import com.intuit.karate.junit5.Karate;

public class TokenRunner {

    @Karate.Test
    Karate testTokenRequest(){
        return Karate.run("token").relativeTo(getClass());
    }

}
