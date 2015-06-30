Feature: View Stock
	
	Scenario: Viewing application's stocks
		Given I am an user
		And I am signed in
		And I have a Wallet
		And there's a sample stock
		When I am on the stocks
		Then I should see the "My First Stock" stock

	Scenario: Should show the create a new Stock link
		Given I am an user
	    And I am signed in
		When I am on the stocks
		Then I should see "New Stock"