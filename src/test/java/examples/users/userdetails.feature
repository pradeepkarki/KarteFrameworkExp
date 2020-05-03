Feature: get all user details
  
  Background:
    * url 'https://reqres.in/api'
    * header content-type = 'aplication/json'
  
  Scenario: get list of users
   Given path 'users'
   And param page = 2
   When method get
   Then status 200