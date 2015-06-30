Feature: Stock Creation
  In order to register my stocks
  As an user
  I should be able to create stocks

  Scenario: Should not create stocks without login
    Given I am on the stocks
    Then I should not see "New Stock"

  Scenario: stock creation
    Given I am an user
    And I am signed in
    And I have a Wallet
    When I am on the stocks
    And I click on New Stock link
    And I fill in "stock_name" with "Stock 1"
    And I fill in "Initial income" with "100"
    And I fill in "Current income" with "150"
    And I select datetime "2015 June 29 - 20:00" as the "stock_buy_date"
    And I fill in "Wallet" with "1"
    When I press the "Create Stock" button
    Then I should see "Stock 1"
    And I should see "Stock was successfully created."
