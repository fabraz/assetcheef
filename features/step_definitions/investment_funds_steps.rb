Given(/^I am on the investment_funds$/) do
  visit investment_funds_path
end

Given(/^there's a sample low duration investment fund$/) do
  @investfund_lowDuration = FactoryGirl.create(:investfund_lowDuration)
end

Given(/^there's a sample medium duration investment fund$/) do
  @investfund_mediumDuration = FactoryGirl.create(:investfund_mediumDuration)
end

Given(/^there's a sample regular duration investment fund$/) do
  @investfund_regularDuration = FactoryGirl.create(:investfund_regularDuration)
end

When(/^I click on New Investment fund link$/) do
  visit new_investment_fund_path
end

When(/^I click the Edit investment fund link$/) do
  visit edit_investment_fund_path(@investment_fund)
end

Given(/^there's a sample no duration investment fund$/) do
  @investfund_new = FactoryGirl.create(:investfund_new)
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

Then(/^I should be in the Edit Investment_fund page$/) do
  expect(page).to have_content("Editing Investment Fund")
end
