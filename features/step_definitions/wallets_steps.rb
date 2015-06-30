Given(/^I have a Wallet$/) do
  @wallet = FactoryGirl.create(:wallet)
end

Given(/^I am on the wallets$/) do
  visit wallets_path
end

When(/^I click on New Wallet link$/) do
  visit new_wallet_path
end
