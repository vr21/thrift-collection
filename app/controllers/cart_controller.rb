class CartController < ApplicationController
   def add_to_cart
     session[:cart] || = {}
     session[:cart][params[:id]] ||= 0
     session[:cart][params[:id]] += 1

     redirect_to action: "cart_page"
   end
end
