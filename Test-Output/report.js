$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("login.feature");
formatter.feature({
  "line": 1,
  "name": "Safety Login feature",
  "description": "\r\nIn order to ensure Login functionality works,\r\nI want to run the cucumber test to verify it is working",
  "id": "safety-login-feature",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 6,
  "name": "Login Functionality",
  "description": "",
  "id": "safety-login-feature;login-functionality",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 9,
  "name": "user opens chrome driver",
  "keyword": "Given "
});
formatter.step({
  "line": 10,
  "name": "user navigates to https://safety.kuvrr.com/",
  "keyword": "Given "
});
formatter.step({
  "line": 11,
  "name": "title of the login page is Safety Kuvrr",
  "keyword": "When "
});
formatter.step({
  "line": 12,
  "name": "user enters email \"admin\" and password \"secret\"",
  "keyword": "Then "
});
formatter.step({
  "line": 13,
  "name": "user click on continue button",
  "keyword": "Then "
});
formatter.step({
  "line": 14,
  "name": "user is on home Page",
  "keyword": "And "
});
formatter.match({
  "location": "LoginStepDefinition.user_opens_chrome_driver()"
});
formatter.result({
  "duration": 8447418500,
  "status": "passed"
});
formatter.match({
  "location": "LoginStepDefinition.OpenloginPage()"
});
