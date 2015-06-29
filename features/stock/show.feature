Feature: View Stock
	
	Scenario: Viewing application's stocks
	    Given I am an user  
	    And there's a stock named "Stock" 
	    When I am on the stocks
	    Then I should see the "Stock" stock

