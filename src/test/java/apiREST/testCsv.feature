Feature: Test con Csv
  @CsvTest
  Scenario Outline: casos de prueba <nombreCaso2>
    Given url 'https://reqres.in/api/users'
    When request {"<name>": <Vname>,"<job>": <Vjob>}
    And method POST
    Then status 201
    Examples:
      | read('test.csv') |

