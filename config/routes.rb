Rails.application.routes.draw do
  root to: 'products#index', as: 'home'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'about', to: 'company_info#about', as:'about'
  get 'contact', to:'company_info#contact', as: 'contact'

  get 'products/:id', to: 'products#show', as: 'products', id: /\d+/

  get 'category/:id', to: 'categories#category_products', as: 'category', id: /\d+/

  get 'search', to:'products#search', as: 'search'

  get 'new', to:'products#new_products', as:'new'

  get 'updated', to:'products#updated_products', as:'updated'

  post 'cart/add_to_cart/:id', to: 'cart#add_to_cart', as:'add_to_cart', id: /\d+/

  get 'cart/cart_page', to: 'cart#cart_page', as: 'showCart'

  post 'cart/update/:id', to: 'cart#update', as: 'update', id: /\d+/

  post 'cart/delete/:id', to: 'cart#delete', as: 'delete', id: /\d+/

  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
