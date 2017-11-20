Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'products#index'
  get 'about', to: 'company_info#about', as:'about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
