FactoryGirl.define do
  factory :exchange, class: Exchange do
    id 1
    initial_income 5000.0
    buy_date Date.today
    exchange_type "Dolar"
    initial_dollar_quotation 3.109
    dollar_quotation 3.5
    variation_dollar "-0.19"
    Wallet_id 1
  end
  factory :exchange_fix, class: Exchange do
    id 2
    initial_income 100.0
    buy_date "2015-06-30 14:37:10 -0300"
    exchange_type "Dolar"
    initial_dollar_quotation 2.0
    dollar_quotation 3.103
    Wallet_id 1
  end
end
