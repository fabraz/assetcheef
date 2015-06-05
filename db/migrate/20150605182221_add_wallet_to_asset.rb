class AddWalletToAsset < ActiveRecord::Migration
  def change
    add_reference :assets, :wallet, index: true, foreign_key: true
  end
end
