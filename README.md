# QA Recruitment task

The task was undertaken to write automated tests for the app: http://qainterview.pythonanywhere.com/

Both API and UI Tests were scripted to ensure frontend and backend test coverage.

The chosen framework for these tests was KarateDSL - https://github.com/karatelabs/karate

## Test Details
To execute the tests for KarateDSL, see details for relevant dependencies: https://github.com/karatelabs/karate#maven

```
Note:: open-jdk17 and Maven build tool were used to script these tests.
```
## API Tests
Can be executed by running the ApiTestRunner.java file

## UI Tests
Can be executed by running the UiTestRunner.java file. Note:: these tests will launch native chrome provided it is located in the default location, see for more details: https://github.com/karatelabs/karate/tree/master/karate-core#configure-driver

## Reports
All reports of executed tests will be found in '/target' folder in the project
 
For the parallel runner - Cucumber reports are available here '/target/cucumber-html-reports/overview-features.html' - once execution is completed using this parallel runner
