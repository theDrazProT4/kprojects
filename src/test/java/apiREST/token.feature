@token
Feature:  getToken


  @getToken
  Scenario: Obtener Token
    * configure connectTimeout = 12000
    * configure readTimeout = 12000
    * url 'https://seguridad.test.uat.cl'
    * header 'Content-Type' = 'Application/x-www-form-urlencode'
    * form field grand_type = 'password'
    * form field client_id = 'ID'
    * form field client_secret = 'secret'
    * form field username = 'user'
    * form field password = 'password'
    * method POST
    * status 200
    * match responsetype == 'json'