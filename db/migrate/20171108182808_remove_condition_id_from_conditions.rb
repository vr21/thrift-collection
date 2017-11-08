class RemoveConditionIdFromConditions < ActiveRecord::Migration[5.1]
  def change
    remove_column :conditions, :condtion_id, :integer
  end
end
