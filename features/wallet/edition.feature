Feature: Editing Wallet
  In Order to be able to update my wallet info
  As an user
  I should be able to edit my wallet

  Scenario: Should go to the edit page
    Given I am an user
    And I am signed in
	And I have a Wallet
    When I am on the wallets
    And I click the Edit wallet link
    Then I should be in the Edit Wallet page

  Scenario: Editing just the wallet name
    Given I am an user
    And I am signed in
   	And I have a Wallet
    When I am on the wallets
    And I click the Edit wallet link
    And I fill in "wallet_name" with "My Awesome Wallet Updated"
    And I press the "Update Wallet" button
    Then I should see "My Awesome Wallet Updated"
