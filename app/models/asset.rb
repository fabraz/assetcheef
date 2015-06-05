class Asset < ActiveRecord::Base
	belongs_to :wallet 

	attr_accessor :asset_type, :asset_price, :asset_quantity, :unique_rate
end
