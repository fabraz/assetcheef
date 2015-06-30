Feature: Editing Stocks
  In Order to be able to update my stocks info
  As an user
  I should be able to edit my stocks

  Scenario: Should go to the edit page
    Given I am an user
    And I am signed in
	  And I have a Wallet
	  And there's a sample stock
    When I am on the stocks
    And I click the Edit stock link
    Then I should be in the Edit Stock page

  Scenario: Editing just the name
    Given I am an user
    And I am signed in
   	And I have a Wallet
	  And there's a sample stock
    When I am on the stocks
    And I click the Edit stock link
    And I fill in "stock_name" with "My second stock"
    And I press the "Update Stock" button
    Then I should see "My second stock"