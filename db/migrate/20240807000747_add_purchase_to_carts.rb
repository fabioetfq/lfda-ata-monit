class AddPurchaseToCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :purchased, :boolean, default: false
  end
end
