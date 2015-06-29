# features/step_definitions/stocks_steps.rb

Given(/^there's a stock named "(.*?)"/) do |stock|
  @stock = FactoryGirl.create(:stock, {name: name})
end

When(/^I am on the stocks$/) do
  visit stocks_path
end

Then(/^I should see the "(.*?)" stock$/) do |title|
  @stock= Stock.find_by_name(name)

  expect(page).to have_content(@stock.name)
  #page.should have_content(@stock.name)
end

When(/^I click on Destroy link$/) do
  Stock.destroy(@stock.id)
end

When(/^I see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^the stock should not be there$/) do
  expect { Stocks.find(@stock.id) }.to raise_error
end

When(/^I click on "(.*?)"$/) do
  pending # express the regexp above with the code you wish you had
end

