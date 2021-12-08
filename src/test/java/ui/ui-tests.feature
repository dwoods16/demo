@ui
Feature: Ui tests for factorial calculator

Background: 
  * call read 'classpath:ui/factorial-page-elements.json'

Scenario: User can access the factorial calculator website, page should be correctly presented
  Given driver baseUrl
  When waitUntil("document.readyState == 'complete'")
  Then match text(FactorialMainPage.descriptionText) == 'The greatest factorial calculator!'
  And match attribute(FactorialMainPage.integerField, 'placeholder') == 'Enter an integer'
  And match text(FactorialMainPage.calculateButton) == 'Calculate!'

Scenario: User can calculate factorial of an integer successfully
  # Generate a random number between 0 - 10 from DataHelper (in utils folder)
  * def integer = testData.randomNumber(10)
  
  # Get the expected factorial for this integer from DataHelper
  * string expectedAnswer = testData.factorialCalculation(integer)
  
  # Integer value must be string for UI test and validation
  * string integerString = integer

  # Set expected result string to validate 
  * def expectedResultText = 'The factorial of ' + integerString + ' is: ' + expectedAnswer

  Given driver baseUrl
  And waitUntil("document.readyState == 'complete'")
  When input(FactorialMainPage.integerField, integerString)
  And click(FactorialMainPage.calculateButton)
  # Wait for the result to appear before validation
  * waitForText(FactorialMainPage.resultText, integerString)
  Then match text(FactorialMainPage.resultText) == expectedResultText

Scenario: User input of non-integer should not calculate and show error
  # Set invalid string 
  * def invalidString = 'Twenty'

  # Expected error 
  * def expectedErrorResult = 'Please enter an integer'

  Given driver baseUrl
  And waitUntil("document.readyState == 'complete'")
  When input(FactorialMainPage.integerField, invalidString)
  And click(FactorialMainPage.calculateButton)
  Then match text(FactorialMainPage.resultText) == expectedErrorResult