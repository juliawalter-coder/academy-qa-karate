Feature: Level 2 - Basic requests GET /users by id - validate statusCode 200

  Background: My preconditions
      * url apiUrl

  Scenario: 002USER - GET by userId = 1 /posts?userId=1 - validate statusCode 200 and id
    * def userId = 1
    Given path 'users', userId
    When method GET
    Then status 200
    And match response contains { id: 1}
    #  And match response[*].id contains 1
    #  And match each response contains { id: 1 }

  Scenario: 003USER - GET by userId = 10 /posts?userId=10 - validate statusCode 200, id and title
    * def userId = 10
    Given path 'users', userId
    When method GET
    Then status 200
    And match response contains { id: 10}
    And match response[*].title !contains 1
    And match response.name == '#string'
    #  And match response[*].id contains 1
    #  And match each response contains { id: 1 }
    #  We do not have a title here
