Feature: View Exchange
  In order to interact with exchanges
  As an user
  I should see the exchanges
	
	Scenario: Viewing application's exchanges
		Given I am an user
		And I am signed in
		And I have a Wallet
		And there's a sample exchange
		When I am on the exchanges
		Then I should see "Exchange type Inicial exchange investment"
		And I should see "Dolar 5000.0"

	Scenario: Should show the create a new Exchange link
		Given I am an user
	    And I am signed in
		When I am on the exchanges
		Then I should see "New Exchange"

	Scenario: Viewing application's exchanges
		Given I am an user
		And I am signed in
		And I have a Wallet
		And there's a sample fix exchange
		When I am on the exchanges
		And I click on Show link
		Then I should see "Exchange type: Dolar"
		And I should see "Inicial exchange investment: 100.0"
		And I should see "Inicial gross value in Reais: 200.0"
		And I should see "Discount: 0.38"