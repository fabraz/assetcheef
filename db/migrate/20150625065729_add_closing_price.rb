class AddClosingPrice < ActiveRecord::Migration
  def change
  	add_column :investment_funds, :closing_price, :decimal
  	add_column :investment_funds, :closing_date, :date
  	add_column :stocks, :closing_price, :decimal
  	add_column :stocks, :closing_date, :date
  end
end
