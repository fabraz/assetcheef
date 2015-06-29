Feature: Deleting Stocks	
	In order to be able to remove stocks
	As an user
	The system should have an interface to it
	
	Scenario: Should delete a stock
		Given I am an user
	    And I am signed in
		When I am on the stocks
	    And there's a stock named "Stock"
		And I click on Destroy link
		Then the stock should not be there
		
