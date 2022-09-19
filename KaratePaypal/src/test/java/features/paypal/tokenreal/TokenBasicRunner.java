package features.paypal.tokenreal;

import com.intuit.karate.junit5.Karate;
public class TokenBasicRunner {

    @Karate.Test
    Karate testTokenReal(){
        return Karate.run("tokenbasic").relativeTo(getClass());
    }

}
