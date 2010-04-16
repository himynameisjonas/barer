Feature: Authentication
  In order to edit bar info
  As a visitor
  I want to create and use an account on the website
  

  Scenario: Signup
    Given I am on the signup page
    When I fill in "Jonas" for "Login"
    And I fill in "jonas@example.com" for "Email"
    And I fill in "123456" for "Password"
    And I fill in "123456" for "Confirm Password"
    And I press "Sign up"
    Then I should see "Thanks for signing up"
    
  Scenario: Signup
    Given I am on the signup page
    When I fill in the following:
      | Login            | Jonas             |
      | Email            | jonas@example.com |
      | Password         | 123456              |
      | Confirm Password | 123456              |
    And I press "Sign up"
    Then I should see "Thanks for signing up"
    
    
    Scenario: Login
      Given a valid user
      When I go to the login page
      And I fill in the following:
        | Login    | jonas |
        | password | 123456  |
      When I press "Log in"
      Then I should see "Logged in successfully"