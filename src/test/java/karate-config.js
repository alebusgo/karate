function fn(){

    var env = karate.env;
    karate.log('karate.env = ',env);

    if(!env){
        env = 'qa';
    }

    var config = {
        apiUrl: 'https://api-m.sandbox.paypal.com'
    }

    if(env == 'qa'){
        config.user = karate.properties['karate.user']
        config.pass = karate.properties['karate.pass']
    } else if (env == 'uat'){
        config.user = 'another'
        config.pass = 'another'
    }

return config;

}