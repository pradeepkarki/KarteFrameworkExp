Feature: sample karate test script
  

  Background: 
    * url 'https://reqres.in/api'
    

  Scenario: get user of with total number of 2 pages
    Given path 'users'
    And param page = 2
    When method get
    Then status 200
		* def data = response.data
		* print 'data - >',data 
   
   
    
   Scenario: get user with id 23
   Given path 'users',23
   When method get
   Then status 200
   * def data = response.data
   * print 'id : ',data.id
   * print 'email id :',data.email
   
   
   
   
   
    