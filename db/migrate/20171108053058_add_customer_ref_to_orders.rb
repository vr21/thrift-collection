class AddCustomerRefToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :category, foreign_key: true
  end
end
