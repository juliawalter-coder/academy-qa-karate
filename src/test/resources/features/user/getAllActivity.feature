Feature: Activity 1 - GET /users - validate statusCode 200

  Background: My preconditions
      * url apiUrl

  Scenario: GET all /users - validate statusCode 200
    Given path 'users'
    When method GET
    Then status 200
    And match response == '#array'
    And match response == '#[_>= 10]'

   #  And response.items.lenght >= 10

