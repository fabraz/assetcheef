require 'rails_helper'

RSpec.describe Wallet, type: :model do
  it "create Wallet" do
	obj_wallet = Wallet.create
	expect(@obj_wallet).to be_a Wallet
  end
end
