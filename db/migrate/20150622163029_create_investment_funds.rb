class CreateInvestmentFunds < ActiveRecord::Migration
  def change
    create_table :investment_funds do |t|
      t.string :name
      t.date :buyDate
      t.float :admTax
      t.string :aditionalInfo
      t.float :exitTax
      t.date :fundBegin
      t.string :manager
      t.string :managerContact
      t.float :shareValue
      t.float :capital
      t.belongs_to :wallet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
