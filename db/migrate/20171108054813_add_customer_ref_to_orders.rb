class AddCustomerRefToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :Customer, foreign_key: true
  end
end
