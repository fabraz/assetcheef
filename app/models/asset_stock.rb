class AssetStock < ActiveRecord::Base
	belongs_to :asset

	attr_accessor :stock_local
end
