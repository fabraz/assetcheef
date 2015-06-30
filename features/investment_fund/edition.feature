Feature: Editing Investment Funds
  In Order to be able to update my Investment Fund info
  As an user
  I should be able to edit my Investment Fund

 Scenario: Should go to the edit page
    Given I am an user
    And I am signed in
	And I have a Wallet
	And there's a sample investment fund
    When I am on the investment_funds
    And I click the Edit investment fund link
    Then I should be in the Edit Investment_fund page

  Scenario: Editing just the Investment fund name
    Given I am an user
    And I am signed in
   	And I have a Wallet
	And there's a sample investment fund
    When I am on the investment_funds
    And I click the Edit investment fund link
    And I fill in "investment_fund_name" with "My second Fund"
    And I press the "Update Investment fund" button
    Then I should see "My second Fund"