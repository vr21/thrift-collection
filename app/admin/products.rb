ActiveAdmin.register Product do
permit_params :name, :size, :color, :price, :category_id, :description, :brand, :condition_id

end
