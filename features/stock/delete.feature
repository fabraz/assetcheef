Feature: Deleting Stocks	
	In order to be able to remove stocks
	As an user
	The system should have an interface to it
	
	Scenario: Should delete a stock
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    And there's a sample stock
		When I am on the stocks
		And I click on Destroy stock link
		Then the stock should not be there
		
