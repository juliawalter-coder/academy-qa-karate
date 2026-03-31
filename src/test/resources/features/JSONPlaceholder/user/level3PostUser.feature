Feature: Level 3 - Requests POST /posts and /comments - validate statusCode 201

  Background: My preconditions
      * url apiUrl
      * def jsonBodyUser004 = read('../../../test-data/JSONPlaceholder/user/dataUser004.json')
      * def jsonBodyUser005 = read('../../../test-data/JSONPlaceholder/user/dataUser005.json')

  @regression
  Scenario: 004USER - POST /posts  - validate statusCode 201, id and title
    Given path 'posts'
    And request jsonBodyUser004
    When method POST
    Then status 201
    And match response.id == '#number? _ > 0'
    And match response contains  { title: '#string' }

  @smoke
  Scenario: 005USER - POST /comments  - validate statusCode 201, emails format and postID content
    Given path 'comments'
    And request jsonBodyUser005
    When method POST
    Then status 201
    And match response.email == '#string? _.includes("@")'
    And match response.postID == '5'
