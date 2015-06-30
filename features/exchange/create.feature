Feature: Exchange creation
	In order to register my exchanges
	As an user
	I should be able to create an exchange

	Scenario: Should not create exchange without login
	    Given I am on the exchanges
	    Then I should not see "New Exchange"
	    And I should see "You need to sign in or sign up before continuing."

 	Scenario: exchange creation
	    Given I am an user
	    And I am signed in
	    And I have a Wallet
	    When I am on the exchanges
	    And I click on New Exchange link
	    And I select Exchange Type "Dolar" as the "exchange_exchange_type"
	    And I fill in "exchange_initial_income" with "1000"
	    When I press the "Create Exchange" button
	    Then I should see "Exchange type: Dolar"
	    And I should see "Inicial exchange investment: 1000.0"
	    And I should see "Exchange was successfully created."

