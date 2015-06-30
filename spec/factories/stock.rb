FactoryGirl.define do
  factory :stock, class: Stock do
    id 1
    name "My First Stock"
    initial_income 100
    current_income 110
    buy_date "2011-10-20T18:26:43.151+00:00"
    buy_tax 1.1
    amount 1
    Wallet_id 1
    closing_price 110
    closing_date "2011-10-21T18:26:43.151+00:00" 	
  end
end