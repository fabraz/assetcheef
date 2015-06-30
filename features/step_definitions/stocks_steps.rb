# features/step_definitions/stocks_steps.rb

Given(/^there's a stock named "(.*?)"/) do |stock|
  @stock = FactoryGirl.create(:stock, {name: name})
end

When(/^I am on the stocks$/) do
  visit stocks_path
end

When(/^I click on Destroy link$/) do
  Stock.destroy(@stock.id)
end

When(/^I click on New Stock link$/) do
  visit new_stock_path
end

When(/^I see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I click on Create Stock link$/) do
  Stock.create(@stock.id)
end

Then(/^I should see the "(.*?)" stock$/) do |title|
  @stock= Stock.find_by_name(name)

  expect(page).to have_content(@stock.name)
end

Then(/^I should not see "(.+)"$/) do |text|
  expect(page).to_not have_content(text)
end

Then(/^the stock should not be there$/) do
  expect { Stocks.find(@stock.id) }.to raise_error
end
