class RemoveCategoryFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :category, :decimal
  end
end
