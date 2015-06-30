Feature: Exchange creation
	In order to register my exchanges
	As an user
	I should be able to create an exchange

	Scenario: Should not create exchange without login
    Given I am on the exchanges_path
    Then I should not see "New Exchange"
    And I should see "You need to sign in or sign up before continuing."
