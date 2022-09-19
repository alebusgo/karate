Feature: Token Request

  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = 'Basic QWVnbDBncWVrOWZLQWdpNXBxcVhJTFR1X1FEUDhvVWt5UlVQSk9OZU9VZkhUWFFSa2F5MTFnUHRnYU12WG1LeDRPMkVoMDNHLVZXZTJodFg6RU1KcVdPbTJQWk0zMklSbkdZZWhrTEQxMWc2NUFoeUVCdFpUVDhiZWx2b20wQldnNm9tcGV4eWd4YjNDZU9LS3ZxZGVidkJQWE9WTmU3ZzQ='


    Scenario: Successful token creation
      Given path '/v1/oauth2/token'
      And request 'grant_type=client_credentials'
      When method POST
      Then status 200
      * print 'Response: ',response
      * def authToken = response.access_token
