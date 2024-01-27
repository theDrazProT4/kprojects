@TokenBasic
Feature: Token Basic and Bearer

  @BearerToken
  Scenario: bearer Token
    Given url 'https://api.github.com/user/repos'
    When header Authorization = 'bearer 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'
    And method GET
    And status 200

  @BasicAToken
  Scenario: basic Authorization Token
    Given url 'https://postman-echo.com/basic-auth'
    When header Authorization = call read('tokenscript.js') {username: 'postman', password: 'password'}
    And method GET
    And status 200