class RemoveCategoryIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :category_id, :decimal
  end
end
