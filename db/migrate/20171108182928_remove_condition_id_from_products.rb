class RemoveConditionIdFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :condtion_id, :integer
  end
end
