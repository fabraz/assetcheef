require 'rails_helper'

RSpec.describe AssetStock, type: :model do
	it "is valid with a asset_type, asset_price, asset_quantity, stock_local and unique_rate" do
		asset_stock = AssetStock.new(
			asset_type: 'Stock',
			asset_price: '100.00',
			asset_quantity: '4',
			stock_local: 'BRB',
			unique_rate: '5')
		expect(asset_stock).to be_valid
	end
end
