class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.float :income
      t.float :efficiency
      t.belongs_to :wallet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
