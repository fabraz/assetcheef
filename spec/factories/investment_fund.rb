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

  factory :investfund_lowDuration, class: InvestmentFund do
    id 2
    name "My First Investment Fund with Low Duration"
    buyDate "2013-02-28"
    admTax 1.25
    aditionalInfo "Aditional Information"
    capital 1000.0
    wallet_id 1
  end
  
  factory :investfund_new, class: InvestmentFund do
    id 3
    name "My First Investment Fund with No Duration at all"
    buyDate Date.today.to_date
    admTax 1.0
    aditionalInfo "Aditional Information"
    capital 1000.0
    wallet_id 1
  end

  factory :investfund_mediumDuration, class: InvestmentFund do
    id 4
    name "My First Investment Fund with Medium Duration"
    buyDate "2014-06-30"
    admTax 0.9
    aditionalInfo "Aditional Information"
    capital 200000.0
    wallet_id 1
  end
  
  factory :investfund_regularDuration, class: InvestmentFund do
    id 5
    name "My First Investment Fund with Regular Duration"
    buyDate "2014-04-30"
    admTax 0.9
    aditionalInfo "Aditional Information"
    capital 10000.0
    wallet_id 1
  end

end