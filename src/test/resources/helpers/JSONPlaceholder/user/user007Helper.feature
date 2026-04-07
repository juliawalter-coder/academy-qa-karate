Feature: Create a Post to the level4PutDeleteuser.feature

  Background: My preconditions
    * url apiUrl
    * def jsonBodyUser004 = read('../../../test-data/JSONPlaceholder/user/dataUser004.json')

  @regression
  Scenario: Generic POST /posts
    Given path 'posts'
    And request jsonBodyUser004
    When method POST
    Then status 201
