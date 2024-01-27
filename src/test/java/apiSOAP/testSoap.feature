@soapRequest

Feature: Plan de pruebas SOAP

  @SoapStatus
  Scenario Outline: SOAP method POST Caso : <CasoP>
    Given  url 'https://www.dataaccess.com/webservicesserver/NumberConversion.wso'
    When header Content-Type = 'text/xml'
    And request
	  """
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <NumberToWords xmlns="http://www.dataaccess.com/webservicesserver/">
      <ubiNum><Num></ubiNum>
    </NumberToWords>
  </soap:Body>
</soap:Envelope>

	  """
    And method POST
#    And match response/Envelope/Body/NumberToWordsResponse/NumberToWordsResult ==  'five hundred '
    Then status <statusResult>
    Examples:
      | casoP         | Num  | statusResult |
      | Numero 800    | 800  | 200          |
      | Numero 50     | 50   | 200          |
      | Numero String | "20" | 400          |
      | Numero null   | null | 400          |
      | Numero Vacio  |      | 400          |

  @soapMatch
  Scenario Outline: SOAP  POST 2 Caso : <CasoP>
    Given  url 'https://www.dataaccess.com/webservicesserver/NumberConversion.wso'
    When header Content-Type = 'text/xml'
    And request
	  """
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <NumberToWords xmlns="http://www.dataaccess.com/webservicesserver/">
      <ubiNum><Num></ubiNum>
    </NumberToWords>
  </soap:Body>
</soap:Envelope>

	  """
    And method POST
    And match response/Envelope/Body/NumberToWordsResponse/NumberToWordsResult ==  '<asercion> '
    Examples:
      | CasoP         | Num | asercion      |
      | Numero 800    | 800 | eight hundred |
      | Numero 11     | 11  | eleven        |
      | Numero 200    | 200 | two hundred   |
      | valid de Dato | 333 | #string       |