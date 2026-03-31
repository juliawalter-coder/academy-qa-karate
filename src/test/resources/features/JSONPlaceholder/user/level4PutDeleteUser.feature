Feature: Level 4 - Requests PUT and DELETE /posts/{id} and /comments - validate statusCode 200

  Background: My preconditions
      * url apiUrl
      * call read('level3PostUser.feature')

  @regression
  Scenario: 006USER - PUT /posts/{id}  - validate statusCode 200 and response content
    Given path 'posts', 28
    And request { title: 'My Post', body: 'Content', userId: 28 }
    When method PUT
    Then status 200
    And match response contains {userId: 28, title: 'My Post', body: 'Content'}
    #   And print 'Full response:', response

  @regression
  Scenario: 007USER - DELETE all /users  - validate statusCode 200 and response content

    #   Given path 'posts'
    #   And request { title: 'My Post', body: 'Content', userId: 4 }
    #   When method POST
    #   Then status 201
    #   And print 'Full response:', response

    Given path 'posts', 28
    When method DELETE
    Then status 200
    And match response == {}
