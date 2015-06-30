Given(/^I have a Wallet$/) do
  @wallet = FactoryGirl.create(:wallet)
end

Given(/^I am on the wallets$/) do
  visit wallets_path
end

When(/^I am on the wallets_show$/) do
  visit wallet_path(@wallet)
end

When(/^I click on New Wallet link$/) do
  visit new_wallet_path
end

When(/^I click on Destroy wallet link$/) do
  Wallet.destroy(@wallet.id)
end

When(/^I click the Edit wallet link$/) do
  visit edit_wallet_path(@wallet)
end

When(/^I click on Your Exchanges link$/) do
  visit exchanges_path
end

When(/^I click on Your Investment Funds link$/) do
  visit investment_funds_path
end

When(/^I click on Your Stocks link$/) do
  visit stocks_path
end

When(/^I click on Stock Moviment link$/) do
  visit stocks_list_stocks_path
end

Then(/^the wallet should not be there$/) do
  expect { Wallet.find(@wallet.id) }.to raise_error
end

Then(/^I should be in the Edit Wallet page$/) do
  expect(page).to have_content("Editing Wallet")
end

