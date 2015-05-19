class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :asset_type
      t.decimal :asset_price
      t.integer :asset_quantity
      t.decimal :unique_rate

      t.timestamps null: false
    end
  end
end
