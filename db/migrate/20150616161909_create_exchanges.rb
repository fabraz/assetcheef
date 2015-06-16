class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :exchange_type
      t.float :exchange_value
      t.float :dollar_quotation
      t.float :euro_quotation
      t.string :variation_dollar
      t.string :variation_euro
      t.timestamps null: false
    end
  end
end
