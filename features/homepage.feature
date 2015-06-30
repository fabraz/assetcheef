Feature: Home Page Test
	
	Scenario: Login in
	    Given I am an user
	    And I am signed in
	    And I am at the homepage
	    Then I should see " Welcome to AssetCheef!"