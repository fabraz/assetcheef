Given(/^I have a Wallet$/) do
  @wallet = FactoryGirl.create(:wallet)
end

Given(/^I am on the wallets$/) do
  visit wallets_path
end

When(/^I click on New Wallet link$/) do
  visit new_wallet_path
end

When(/^I click on Destroy wallet link$/) do
  Wallet.destroy(@wallet.id)
end

Then(/^the wallet should not be there$/) do
  expect { Wallet.find(@wallet.id) }.to raise_error
end

