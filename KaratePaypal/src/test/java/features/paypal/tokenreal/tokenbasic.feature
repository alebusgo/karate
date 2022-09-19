Feature: Token Request

  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = call read('basic-auth.js') {username: 'Aegl0gqek9fKAgi5pqqXILTu_QDP8oUkyRUPJONeOUfHTXQRkay11gPtgaMvXmKx4O2Eh03G-VWe2htX', password: 'EMJqWOm2PZM32IRnGYehkLD11g65AhyEBtZTT8belvom0BWg6ompexygxb3CeOKKvqdebvBPXOVNe7g4' }


  Scenario: Successful token creation
    Given path '/v1/oauth2/token'
    And request 'grant_type=client_credentials'
    When method POST
    Then status 200
    * print 'Response: ',response
    * def authToken = response.access_token
