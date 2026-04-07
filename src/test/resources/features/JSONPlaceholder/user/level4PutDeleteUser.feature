Feature: Level 4 - Requests PUT and DELETE /posts/{id} and /comments - validate statusCode 200

  Background: My preconditions
      * url apiUrl
      * call read('../../../helpers/JSONPlaceholder/user/user007Helper.feature')
      * def jsonBodyUser006 = read('../../../test-data/JSONPlaceholder/user/dataUser006.json')

  @regression
  Scenario: 006USER - PUT /posts/{id}  - validate statusCode 200 and response content
    Given path 'posts', 28
    And request jsonBodyUser006
    When method PUT
    Then status 200
    And match response contains {userId: 28, title: 'My Post Test', body: 'Content Test'}

  @regression
  Scenario: 007USER - DELETE all /users  - validate statusCode 200 and response content
    Given path 'posts', 28
    When method DELETE
    Then status 200
    And match response == {}
