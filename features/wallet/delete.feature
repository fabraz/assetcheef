Feature: Deleting Wallet	
	In order to be able to remove a wallet
	As an user
	The system should have an interface to it

	Scenario: Should delete a stock
		Given I am an user
	    And I am signed in
	    And I have a Wallet
		When I am on the wallets
		And I click on Destroy wallet link
		Then the wallet should not be there