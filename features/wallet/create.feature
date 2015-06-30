Feature: Wallet Creation
  In order to register my wallet
  As an user
  I should be able to create wallet

  Scenario: Should not create wallet without login
    Given I am on the wallets
    Then I should not see "New Wallet"
    And I should see "You need to sign in or sign up before continuing."

  Scenario: wallet creation
    Given I am an user
    And I am signed in
    When I am on the wallets
    And I click on New Wallet link
    And I fill in "wallet_name" with "Minha Carteira"
    And I fill in "wallet_description" with "Essa é a minha carteira de investimento incrível."
    And I fill in "wallet_user_id" with "1"
    When I press the "Create Wallet" button
    Then I should see "Name: Minha Carteira"
    And I should see "User: teste@teste.com"
    And I should see "Description: Essa é a minha carteira de investimento incrível."
    And I should see "Wallet was successfully created."