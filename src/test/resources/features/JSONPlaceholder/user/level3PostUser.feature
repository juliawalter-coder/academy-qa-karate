Feature: Level 3 - Requests POST /posts and /comments - validate statusCode 201

  Background: My preconditions
      * url apiUrl

  Scenario: POST /posts  - validate statusCode 201, id and title
    Given path 'posts'
    And request { title: 'My Post', body: 'Content', userId: 28 }
    When method POST
    Then status 201
    And match response.id == '#number? _ > 0'
    And match response contains  { title: '#string' }
    #   And match each response contains { id: '#number' }
    #   And match response contains { id: 28 }
    #   And match response.title == 'My Post'
    #   And match response == '#array'
    #   And match response == '#[_>= 10]'

  Scenario: POST /comments  - validate statusCode 201, emails format and postID content
    #   * def isValidEmail = function(email) { return email.includes('@') && email.includes('.') }
    Given path 'comments'
    And request { email: 'teste@test.com', postID: '5'}
    When method POST
    Then status 201
    And match response.email == '#string? _.includes("@")'
    And match response.postID == '5'
    #   And match response.email == '#? isValidEmail(_)'
    #   And print 'Full response:', response
