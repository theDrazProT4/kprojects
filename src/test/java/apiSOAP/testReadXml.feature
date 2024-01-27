Feature: Read XML SOAP

  @soapXml
  Scenario Outline: SOAP Xml : <CasoP>
    Given  url 'https://www.dataaccess.com/webservicesserver/NumberConversion.wso'
    When header Content-Type = 'text/xml'
    And  def bodyX = read ('body.xml')
    And request bodyX
    And method POST
#    And match response/Envelope/Body/NumberToWordsResponse/NumberToWordsResult ==  '<asercion> '
    Examples:
      | CasoP         | Num |
      | Numero 800    | 800 |
      | Numero 11     | 11  |
      | Numero 200    | 200 |
      | valid de Dato | 333 |