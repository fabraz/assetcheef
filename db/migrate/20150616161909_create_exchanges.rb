class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :exchange_type
      t.float :exchange_value

      t.timestamps null: false
    end
  end
end
