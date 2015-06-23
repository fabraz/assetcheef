class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.float :initial_income
      t.float :current_income
      t.float :efficiency
      t.timestamp :buy_date
      t.string :exchange_type
      t.float :dollar_quotation
      t.float :euro_quotation
      t.string :variation_dollar
      t.string :variation_euro
      t.belongs_to :Wallet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
