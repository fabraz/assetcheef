class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :name
      t.string :description
      t.belongs_to :user, index: true, foreign_key: true
      t.references :stocks, index: true

      t.timestamps null: false
    end
  end
end
