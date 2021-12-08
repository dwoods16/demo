@api
Feature: Api tests for factorial calculator

Scenario: Factorial calculation of an integer request should succeed
  # Generate a random number between 0 - 989 from DataHelper (in utils folder)
  * def integer = testData.randomNumber(989)
  
  # Get the expected factorial for this integer from DataHelper
  * def expectedAnswer = testData.factorialCalculation(integer)
  * print expectedAnswer

  Given url baseUrl
  And path 'factorial'
  And form field number = integer
  When method post
  Then status 200
  And match response == { answer: '#(expectedAnswer)' }

Scenario Outline: Factorial calculation of <case> request should fail
  Given url baseUrl
  And path 'factorial'
  And form field number = -1
  When method post
  Then status 500

  Examples:
  | case                       | num       |
  | a negative integer         | -1        |
  | a non-integer              | 'invalid' |
  | an integer above the limit | 990       |