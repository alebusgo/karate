Feature: Orders Creation Together

  Background:
    * def tokenResponse = call read('classpath:features/paypal/auth/token.feature')
    * def token = tokenResponse.authToken
    * print 'Token: ',token

    @walkthrough
  Scenario: Successful order creation walkthrough
    Given url 'https://api-m.sandbox.paypal.com'
    And path '/v2/checkout/orders'
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer ' + token
    And request read('bodyAnother.json')
    When method POST
    Then status 201
    And print 'Response: ',response
    And match response == read('valuesPresent.json')

  Scenario: Successful order creation
    Given url 'https://api-m.sandbox.paypal.com'
    And path '/v2/checkout/orders'
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer ' + token
    And request read('bodyAnother.json')
    When method POST
    Then status 201
    And print 'Response: ',response
    And match response == read('expectedValues.json')
