Feature: Authentication
  In order to edit bar info
  As a visitor
  I want to create and use an account on the website

  Scenario: Signup
    Given I am on the signup page
    When I fill in the following:
      | Display name          | Jonas             |
      | Email                 | jonas@example.com |
      | Password              | 123456            |
      | Password confirmation | 123456            |
    And I press "Sign up"
    Then I should see "You have signed up successfully"
    And I should see "Inloggad som Jonas"
  

  Scenario: Login
    Given a valid user
    When I go to the login page
    And I fill in the following:
      | Email    | jonas@example.com |
      | password | 123456            |
    When I press "Sign in"
    Then I should see "Signed in successfully"
  