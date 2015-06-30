class AddColumnsToExchangeTable < ActiveRecord::Migration
  def change
  	add_column :exchanges, :initial_dollar_quotation, :float
  	add_column :exchanges, :initial_euro_quotation, :float
  	add_column :exchanges, :discount, :float
  end
end
