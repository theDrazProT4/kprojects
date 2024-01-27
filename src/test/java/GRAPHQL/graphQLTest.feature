@graphQLTest
Feature: PLan de pruebas graphQL Caso: <NombreCaso>

  @graphQLTestUsers
  Scenario Outline: prueba Query
    Given url 'https://rickandmortyapi.com/graphql'
    When text query =
      """
      query {
  character (id:<idCharacter>){
    name,
    status,
    species,
    gender
  }
  }
      """
    And request {query : '#(query)'}
    And method POST
    And match response.data.character.gender == 'Male'
    Then status 200
    Examples:
      | NombreCaso | idCharacter |
      | Id = 12    | 12          |
      | Id = 1     | 1           |
      | Id = 30    | 30          |
      | Id = 5     | 5           |
      | Id = 100   | 100         |

