class CreateCompanyInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :company_infos do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
