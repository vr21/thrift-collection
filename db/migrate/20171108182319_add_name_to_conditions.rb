class AddNameToConditions < ActiveRecord::Migration[5.1]
  def change
    add_column :conditions, :name, :string
  end
end
