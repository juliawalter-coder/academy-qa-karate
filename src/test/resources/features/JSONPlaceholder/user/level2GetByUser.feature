Feature: Level 2 - Basic requests GET /users by id - validate statusCode 200

  Background: My preconditions
      * url apiUrl

  @regression
  Scenario Outline: 002USER/003USER - GET by userId = 1/10 /posts?userId=<id> - validate statusCode 200, id and title
    * def userId = '<id>'
    Given path 'users', userId
    When method GET
    Then status 200
    And match response contains {id: <id>}
    And match response[*].title !contains 1
    And match response.name == '#string'
    #  And print 'Full response:', response
    #  And match response[*].id contains 1
    #  And match each response contains { id: 1 }

    Examples:
      | id |
      | 1  |
      | 10 |
