class ChangeNamesInStock < ActiveRecord::Migration
  def change
  	rename_column :stocks, :efficiency, :current_income
  	rename_column :stocks, :income, :initial_income
  end
end
