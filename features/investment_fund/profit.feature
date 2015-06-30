Feature: Calculating the Profit
  In Order to be able to calculate my Investment Fund profit
  As an user
  I should be able to see my Investment Fund profit

  Scenario: Should be the correct profit for low duration Invest Fund
    Given I am an user
    And I am signed in
	And I have a Wallet
	And there's a sample low duration investment fund
    When I am on the investment_funds
    Then I should see "Nome Data de Compra Taxa Adm Gross Profit Liquid Profit Observações Inicío do Fundo Valor da Cota Capital Investido"
    And I should see "My First Investment Fund with Low Duration 2013-02-28 1.25 240.0 198.0 Aditional Information 1000.0"

  Scenario: Should be the correct profit for no duration Invest Fund
    Given I am an user
    And I am signed in
	And I have a Wallet
	And there's a sample no duration investment fund
    When I am on the investment_funds
    Then I should see "Nome Data de Compra Taxa Adm Gross Profit Liquid Profit Observações Inicío do Fundo Valor da Cota Capital Investido"
    And I should see "My First Investment Fund with No Duration at all 2015-06-30 1.0 0.0 0.0 Aditional Information 1000.0"

  Scenario: Should be the correct profit for medium duration Invest Fund
    Given I am an user
    And I am signed in
	And I have a Wallet
	And there's a sample medium duration investment fund
    When I am on the investment_funds
    Then I should see "Nome Data de Compra Taxa Adm Gross Profit Liquid Profit Observações Inicío do Fundo Valor da Cota Capital Investido"
    And I should see "My First Investment Fund with Medium Duration 2014-06-30 0.9 24000.0 19584.0 Aditional Information 200000.0"
    
  Scenario: Should be the correct profit for regular duration Invest Fund
    Given I am an user
    And I am signed in
	And I have a Wallet
	And there's a sample regular duration investment fund
    When I am on the investment_funds
    Then I should see "Nome Data de Compra Taxa Adm Gross Profit Liquid Profit Observações Inicío do Fundo Valor da Cota Capital Investido"
    And I should see "My First Investment Fund with Regular Duration 2014-04-30 0.9 1200.0 979.2 Aditional Information 10000.0"

    