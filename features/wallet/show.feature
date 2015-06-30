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
		When I am on the wallets
		Then I should see "New Wallet"

	Scenario: Should access Exchange in Wallet show
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    When I am on the wallets_show
	    And I click on Your Exchanges link
	    Then I should see "Listing Exchanges"

	Scenario: Should access Investment Fund in Wallet show
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    When I am on the wallets_show
	    And I click on Your Investment Funds link
	    Then I should see "Listing Investment Funds"

	Scenario: Should access Stock in Wallet show
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    When I am on the wallets_show
	    And I click on Your Stocks link
	    Then I should see "Listing Stocks"

	Scenario: Should acess Stock Movimentation in Wallet show
		Given I am an user
	    And I am signed in
	    And I have a Wallet
	    When I am on the wallets_show
	    And I click on Stock Moviment link
	    Then I should see "Stocks Movimentation"