Given(/^I am on the investment_funds$/) do
  visit investment_funds_path
end

When(/^I click on New Investment fund link$/) do
  visit new_investment_fund_path
end

Given(/^there's a sample investment fund$/) do
  @investment_fund = FactoryGirl.create(:investment_fund)
end

When(/^I click on Destroy investment_fund link$/) do
  InvestmentFund.destroy(@investment_fund.id)
end

Then(/^the investment_fund should not be there$/) do
  expect { InvestmentFund.find(@investment_fund.id) }.to raise_error
end
