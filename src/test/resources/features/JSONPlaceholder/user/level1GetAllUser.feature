Feature: Level 1 - Basic requests GET /users - validate statusCode 200

  Background: My preconditions
      * url apiUrl

  Scenario: 001USER - GET all /users - validate statusCode 200, data type array and length
    Given path 'users'
    When method GET
    Then status 200
    And match response == '#array'
    And match response == '#[_>= 10]'

   #  And response.items.lenght >= 10
