class CreateAssetStocks < ActiveRecord::Migration
  def change
    create_table :asset_stocks do |t|
      t.string :stock_local

      t.timestamps null: false
    end
  end
end
