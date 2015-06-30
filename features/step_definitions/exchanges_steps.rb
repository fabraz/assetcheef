Given(/^I am on the exchanges$/) do
  visit exchanges_path
end

Given(/^there's a sample exchange$/) do
  @exchange = FactoryGirl.create(:exchange)
end

Given(/^there's a sample fix exchange$/) do
  @exchange_fix = FactoryGirl.create(:exchange_fix)
end

When(/^I click on New Exchange link$/) do
	visit new_exchange_path
end

When(/^I select Exchange Type "(.*?)" as the "(.*?)"$/) do |value, field|
  select(value, :from => field)
end

When(/^I click on Destroy exchange link$/) do
  Exchange.destroy(@exchange.id)
end

When(/^I click the Edit exchange link$/) do
  visit edit_exchange_path(@exchange)
end

When(/^I click on Show link$/) do
  visit exchange_path(@exchange_fix)
end

Then(/^the exchange should not be there$/) do
  expect { Exchange.find(@stock.id) }.to raise_error
end

Then(/^I should be in the Edit Exchange page$/) do
  expect(page).to have_content("Editing Exchange")
end
