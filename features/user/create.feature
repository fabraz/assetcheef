Feature: User Creation
  In order to register my user
  As an user
  I should be able to create my user record

  Scenario: user creation
    Given I am at the homepage
    When I click on Sign up link
    And I fill in "user_email" with "teste@teste.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    When I press the "Sign up" button
    Then I should see " Welcome to AssetCheef!"
    And I should see "Welcome! You have signed up successfully."