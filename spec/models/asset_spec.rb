require 'rails_helper'

RSpec.describe Asset, type: :model do
	describe "assossiation" do
		it { should belong_to(:wallet) }
	end 

	it "instance of" do
		@asset = Asset.new
		expect(@asset).to be_a Asset
	end
 
end
