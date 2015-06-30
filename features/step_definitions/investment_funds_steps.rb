Given(/^I am on the investment_funds$/) do
  visit investment_funds_path
end

When(/^I click on New Investment fund link$/) do
  visit new_investment_fund_path
end
