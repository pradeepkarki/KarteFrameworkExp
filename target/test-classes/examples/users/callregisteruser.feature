
Feature: generate access token


Background:
* url 'https://reqres.in/api'
* header content-type = 'Application/Json'
* table loginDetails
  | username   | password |
  | 'eve.holt@reqres.in'  |   'pistol' |
  | 'eve.holt1@reqres.in' |   'pistol' |
  
* def payload = read('this:payload.json')
#* def responsecall = call read('registeruser.feature') { username: 'eve.holt@reqres.in', password: 'pistol' }
#* def responsecall = call read('registeruser.feature') loginDetails
* def responsecall = call read('registeruser.feature') payload
* def expectedToken = responsecall.response.token
* print 'Id : ',responsecall.response.id
* print 'Access token : ', expectedToken


Scenario: generate token 
*print 'token :',expectedToken





