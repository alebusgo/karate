Feature: Token Request

  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * header Content-Type = 'application/x-www-form-urlencoded'
    Then print user
    And print pass
    * header Authorization = call read('basic-auth.js') {username: '#(user)', password: '#(pass)' }

  Scenario: Successful token creation
    Given path '/v1/oauth2/token'
    And request 'grant_type=client_credentials'
    When method POST
    Then status 200
    * print 'Response: ',response
    * def authToken = response.access_token
