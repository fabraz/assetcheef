# features/step_definitions/stocks_steps.rb

Given(/^I am an user$/) do 
  @user = FactoryGirl.create(:user)
end

Given(/^there's a stock named "(.*?)"/) do |stock|
  @stock = FactoryGirl.create(:stock, {name: name})
end
When(/^I am on the stocks$/) do
  visit stocks_path
end

Then(/^I should see the "(.*?)" stock$/) do |title|
  @stock= Stock.find_by_name(name)

  page.should have_content(@stock.name)
end

