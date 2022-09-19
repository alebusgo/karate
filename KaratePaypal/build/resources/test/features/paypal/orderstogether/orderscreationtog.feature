Feature: Orders Creation Together

  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * path '/v1/oauth2/token'
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = 'Basic QWVnbDBncWVrOWZLQWdpNXBxcVhJTFR1X1FEUDhvVWt5UlVQSk9OZU9VZkhUWFFSa2F5MTFnUHRnYU12WG1LeDRPMkVoMDNHLVZXZTJodFg6RU1KcVdPbTJQWk0zMklSbkdZZWhrTEQxMWc2NUFoeUVCdFpUVDhiZWx2b20wQldnNm9tcGV4eWd4YjNDZU9LS3ZxZGVidkJQWE9WTmU3ZzQ='
    * request 'grant_type=client_credentials'
    * method POST
    * status 200
    * def token = response.access_token
    * print 'Token: ',token

    Scenario: Successful order creation
      Given url 'https://api-m.sandbox.paypal.com'
      And path '/v2/checkout/orders'
      And header Content-Type = 'application/json'
      And header Authorization = 'Bearer ' + token
      And request read('bodyTo.json')
      When method POST
      Then status 201
      And print 'Response: ',response