Feature: Reverse Geocoding Coordinates

  Background:
    * url 'https://revgeocode.search.hereapi.com'
    * header Authorization = 'bearer eyJhbGciOiJSUzUxMiIsImN0eSI6IkpXVCIsImlzcyI6IkhFUkUiLCJhaWQiOiJ0ZkJRWDZrVHJYMTJJWXUxbUxPcyIsImlhdCI6MTY1MDkyMjkwOSwiZXhwIjoxNjUxMDA5MzA5LCJraWQiOiJqMSJ9.ZXlKaGJHY2lPaUprYVhJaUxDSmxibU1pT2lKQk1qVTJRMEpETFVoVE5URXlJbjAuLmlpRzd0VU8ySDVuLU9wb2RLbWZtZXcuM29LblVRVV9HLW9QZjJJUkxzcEY4RkozUzdoT0R0M2VDT0t0amVTQUZ1SktCckxnOWI1WWNPV3JrU193WG9yNHVvdTZqRC1qRzhoak8wMG9uUkNWY1FfOWNON2xPU0dKdnRXQ3BlN09MVlFFcE4wN1R0eTlXdTQ0ZnVVLTFUSTdvTU5LdmV5dzBoYkJ5M2hPUFBOOTh3LmMzWC1lNV9UclB6QzZ3dFBFNDRGNkhXQzhUaVk3dTNUUlVrRVEzOVhUc0k.lF66QT6mLzh__ndjnCoJOfONLznPqYIbIyrCmOGa5TN-YSzPob9ED2EhfJc4N_LaLUqwbGN02BLD-AD7TZ5VLPnILaqmKXAdGojV3dyHSFVeRlUE-6ed6lHK-wB7nUOPiOpSM0OF4O2vMUt6N0Y6DkoVFJ4k4Q9_vDcplvwTVK0WahBcDjXNNYy8KriFr9-wVtVst-6Z8xwoW5APbqhKP-fx_SA4tUFrHmRELRFbhTtNWqGdtVs1HS9-AGZVq8PtZFOSsahCIokBwdu7RpjsC5m0fvVPvwOnsai8tcUyuyDYX-pfB6ZK7ESUsFdJiUs7h9pTWkICR1APrmFYlo_vqw'
    @walkthrough
  Scenario: Success response
    Given path '/v1/revgeocode'
    And param at = '6.202638,-75.570000'
    And param lang = 'en-US'
    When method GET
    Then status 200
    * print 'Response: ',response