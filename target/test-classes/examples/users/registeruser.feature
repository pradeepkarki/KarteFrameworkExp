#Author: pradeep.karki@xyz.com
#Feature Definition for user ragisteration

Feature: register the user

Background: 
* url 'https://reqres.in/api'
* header content-type = 'Application/Json' 

Scenario: register the user 
Given path 'register'
And request { "email": "#(username)","password": "#(password)"}
When method post
Then status 200
