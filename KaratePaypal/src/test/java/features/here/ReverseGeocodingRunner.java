package features.here;

import com.intuit.karate.junit5.Karate;

public class ReverseGeocodingRunner {

    @Karate.Test
    Karate testHereReverseGeocode(){
        return Karate.run("reverseGeocoding").relativeTo(getClass());
    }

}
