Feature: Deleting Investment Funds	
	In order to be able to remove investment funds
	As an user
	The system should have an interface to it
	
	Scenario: Should delete a Investment fund
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    And there's a sample investment fund
		When I am on the investment_funds
		And I click on Destroy investment_fund link
		Then the investment_fund should not be there
		