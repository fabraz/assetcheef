require 'rails_helper'

RSpec.describe Wallet, type: :model do
  it "create Wallet" do
	@obj_wallet = Wallet.new(1, "MY_WALLET", "My pit of money")
	expect(@obj_wallet).to be_a Wallet
  end
end
