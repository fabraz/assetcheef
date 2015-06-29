Feature: View Stock
	
	Scenario: Viewing application's stocks
		Given I am an user
		And I am signed in
		When I am on the stocks
		And there's a stock named "Stock"
		Then I should see the "Stock" stock

	Scenario: Should show the create a new Stock link
		Given I am an user
	    And I am signed in
		When I am on the stocks
		Then I should see "New Stock"