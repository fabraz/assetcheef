Feature: Editing Exchange
  In Order to be able to update my exchanges info
  As an user
  I should be able to edit my exchanges

  Scenario: Should go to the edit page
    Given I am an user
    And I am signed in
	  And I have a Wallet
	  And there's a sample exchange
    When I am on the exchanges
    And I click the Edit exchange link
    Then I should be in the Edit Exchange page

  Scenario: Editing the currency value to buy
    Given I am an user
    And I am signed in
   	And I have a Wallet
	  And there's a sample exchange
    When I am on the exchanges
    And I click the Edit exchange link
    And I fill in "exchange_initial_income" with "4564321"
    And I press the "Update Exchange" button
    Then I should see "4564321"