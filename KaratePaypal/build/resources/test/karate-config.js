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
        config.user = 'Aegl0gqek9fKAgi5pqqXILTu_QDP8oUkyRUPJONeOUfHTXQRkay11gPtgaMvXmKx4O2Eh03G-VWe2htX'
        config.pass = 'EMJqWOm2PZM32IRnGYehkLD11g65AhyEBtZTT8belvom0BWg6ompexygxb3CeOKKvqdebvBPXOVNe7g4'
    } else if (env == 'uat'){
        config.user = 'another'
        config.pass = 'another'
    }

return config;

}