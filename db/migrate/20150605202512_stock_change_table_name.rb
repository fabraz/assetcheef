class StockChangeTableName < ActiveRecord::Migration
  def change
    rename_table :asset_stocks, :stock
  end
end
