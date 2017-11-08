class RemoveDescriptionFromConditions < ActiveRecord::Migration[5.1]
  def change
    remove_column :conditions, :description, :text
  end
end
