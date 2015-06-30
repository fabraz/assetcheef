FactoryGirl.define do
  factory :investment_fund, class: InvestmentFund do
    id 1
    name "My First Investment Fund"
    buyDate "2011-10-20"
    admTax 1.0
    aditionalInfo "Aditional Information"
    exitTax 1.0
    fundBegin "2011-10-15"
    manager "Fulano de Tal"
    managerContact "fulano@detal.com.br"
    shareValue 1.0
    capital 1.0
    wallet_id 1
    closing_price 110
    closing_date "2011-10-21T18:26:43.151+00:00"  
  end
end