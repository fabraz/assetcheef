Given(/^I am on the exchanges$/) do
  visit exchanges_path
end

When(/^I click on New Exchange link$/) do
	visit new_exchange_path
end

When(/^I select Exchange Type "(.*?)" as the "(.*?)"$/) do |value, field|
  select(value, :from => field)
end
