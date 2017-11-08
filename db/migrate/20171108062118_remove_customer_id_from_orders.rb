class RemoveCustomerIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :Customer_id, :integer
  end
end
