module WalletsHelper
	include StocksHelper

	def stock_moving
		@stock = Stock.find(@wallet.id)#.where(stock_id: @stock.id)
		movement = liquid_income
	end
end
