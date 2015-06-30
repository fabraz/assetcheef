Feature: View Wallet
  In order to interact with wallet
  As an user
  I should see the wallet
	
	Scenario: Viewing application's wallets
		Given I am an user
		And I am signed in
		And I have a Wallet
		When I am on the wallets
		Then I should see "Name Description User"
		And I should see "My Wallet This is my wallet teste@teste.com"

	Scenario: Should show the create a new Stock link
		Given I am an user
	    And I am signed in
		When I am on the stocks
		Then I should see "New Stock"