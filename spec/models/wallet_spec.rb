require 'rails_helper'

RSpec.describe Wallet, type: :model do
  it "create Wallet" do
  	@wallet = Wallet.new
	expect(@wallet).to be_a Wallet
  end
 describe "Testing has_many assossiation " do 
 	it { is_expected.to have_many(:assets) }
 end

end
