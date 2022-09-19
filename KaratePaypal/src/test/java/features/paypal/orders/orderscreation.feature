Feature: Orders Creation

  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer A21AAKd7E_iqcZUEFksntS5BqJog_LXqh_2h7LVLJU49cQ1Co3_9-8Bno1K2Nelm2Y8GqnuMWZw3BYZVTteYRjmWFqFJ2dD-A'

    @walkthrough
  Scenario: Successful order creation
      Given path '/v2/checkout/orders'
      And request read('body.json')
      When method POST
      Then status 201
      And print 'Response: ',response

  @walkthrough
  Scenario: Successful order creation
    Given path '/v2/checkout/orders'
    And request read('body.json')
    When method POST
    Then status 401
    And print 'Response: ',response