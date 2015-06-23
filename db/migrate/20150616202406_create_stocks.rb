class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.float :income
      t.float :efficiency
      t.timestamp :buy_date
      t.float :buy_tax
      t.float :amount
      t.belongs_to :Wallet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
