  Feature: get all user details
  
  Background:
    * url 'https://reqres.in/api'
    * header content-type = 'aplication/json'
    * def resp = call read('userdetails.feature')
		* def respExpected = resp.response 
		* print '*****************',respExpected 
   
 Scenario: get list of users
   Given path 'users'
   And param page = 2
   When method get
   Then status 200
   * def genertedResponse = response
   * print '@@@@@@@@',genertedResponse
   * match genertedResponse == respExpected
   
    
    
  
  
   
   