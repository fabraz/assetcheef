Feature: Signout Test
	
	Scenario: Logout in
	    Given I am an user
	    And I am signed in
	    And I am at the homepage
	    When I click on Logout link
	    Then I should see "You need to sign in or sign up before continuing."
