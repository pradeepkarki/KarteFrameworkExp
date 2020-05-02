Feature: sample karate test script
  

  Background: 
    * url 'https://reqres.in/api'
    * header content-type = 'aplication/json'
    

  Scenario: get user of with total number of 2 pages
    Given path 'users'
    And param page = 2
    When method get
    Then status 200
		* def data = response.data
		* print 'data - >',data 
   
   
    
   Scenario Outline: get user with id <id>
   Given path 'users',<id>
   When method get
   Then status 200
   * def data = response.data
   * print 'id : ',data.id
   * print 'email id :',data.email
   
   
   
   Examples:
   |id|
   |1|
   |2|
   |3|
   |4|
   |5|
   |6|
   |7|
   |8|
   |9|
   
   
   
   
   
   
   
   
    