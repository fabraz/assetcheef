Feature: View Investment Fund
  In order to interact with Investment funds
  As an user
  I should see the Investment Funds
	
	Scenario: Viewing application's Investment Funds
		Given I am an user
		And I am signed in
		And I have a Wallet
		And there's a sample investment fund
		When I am on the investment_funds
		Then I should see "My First Investment Fund"

	Scenario: Should show the create a new Investment Fund link
		Given I am an user
	    And I am signed in
		When I am on the investment_funds
		Then I should see "New Investment fund"