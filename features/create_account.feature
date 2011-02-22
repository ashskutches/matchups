Feature: Create Account and Log out
  In order to contribute matchup knowledge
  As a user
  I want to create an account and logout

  Background:
    Given I am on the home page
    And I follow "Sign up"
    Then I should see "Sign up"

  Scenario: Sign up for an account 
    When I fill in "user_name" with "WaKkWaKk"
    When I fill in "user_email" with "wakkwakk@gmail.com"
    When I fill in "user_password" with "password"
    When I fill in "user_password_confirmation" with "password"
    And I press "user_submit"
    Then I should see "You have signed up successfully."
    And I follow "/ Sign out"
    Then I should see "Signed out successfully."
