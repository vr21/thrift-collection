ActiveAdmin.register CompanyInfo do

  permit_params :name, :number, :email, :address, :description

end
