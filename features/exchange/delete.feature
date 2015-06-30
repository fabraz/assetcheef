Feature: Deleting Exchanges	
	In order to be able to remove exchanges
	As an user
	The system should have an interface to it
	
	Scenario: Should delete a exchange
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    And there's a sample exchange
		When I am on the exchanges
		And I click on Destroy exchange link
		Then the exchange should not be there
		
