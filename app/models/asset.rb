class Asset < ActiveRecord::Base
	attr_accessor :asset_type, :asset_price, :asset_quantity, :stock_local, :unique_rate
end
