# features/step_definitions/stocks_steps.rb

Given(/^there's a sample stock/) do
  @stock = FactoryGirl.create(:stock)
end

When(/^I am on the stocks$/) do
  visit stocks_path
end

When(/^I am on the stocks_show$/) do
  visit stock_path(@stock)
end

When(/^I click on Destroy stock link$/) do
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

When(/^I click the Edit link$/) do
  visit edit_stock_path(@stock)
end

When(/^I click on Moviment link$/) do
  visit stocks_movimentation_stock_path(@stock)
end


Then(/^I should see the "(.*?)" stock$/) do |name|
  #@stock= Stock.find_by_name(name)

  expect(page).to have_content(name)
end

Then(/^I should not see "(.+)"$/) do |text|
  expect(page).to_not have_content(text)
end

Then(/^the stock should not be there$/) do
  expect { Stocks.find(@stock.id) }.to raise_error
end

Then(/^I should be in the Edit Stock page$/) do
  expect(page).to have_content("Editing Stock")
end
