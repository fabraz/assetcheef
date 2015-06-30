Feature: Investment Fund Creation
  In order to register my investment fund
  As an user
  I should be able to create an investment fund

  Scenario: Should not create investment fund without login
    Given I am on the investment_funds
    Then I should not see "New Investment fund"
    And I should see "You need to sign in or sign up before continuing."
    
  Scenario: Investment fund creation
    Given I am an user
    And I am signed in
    And I have a Wallet
    And I am on the investment_funds
    When I click on New Investment fund link
    And I fill in "investment_fund_name" with "Meu Fundo BB de Investimento"
	And I select date "2015 June 29" as the "investment_fund_buyDate"
    And I fill in "investment_fund_wallet_id" with "1"
    When I press the "Create Investment fund" button
    Then I should see "Nome: Meu Fundo BB de Investimento"
    And I should see "Data da Compra: 2015-06-29"
    And I should see "Investment fund was successfully created."
