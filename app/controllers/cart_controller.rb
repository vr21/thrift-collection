class CartController < ApplicationController
before_action :initial_session

   def add_to_cart
    @disable_search = true
     session[:cart] ||= {}
     session[:cart][params[:id]] ||= 0
     session[:cart][params[:id]] += 1

     redirect_to action:"cart_page"

   end

   def cart_page
    @disable_search = true
    @categories = Category.all
    session[:cart] ||= {}
   end

   def update
     @quantity = params[:quantity].to_i
     session[:cart] ||= {}
     session[:cart][params[:id]] ||= 0
     session[:cart][params[:id]] =@quantity

          redirect_to action:"cart_page"
   end

   def delete
     session[:cart].except!(params[:id])
     redirect_to action: "cart_page"
   end

   private
   def initial_session
     session[:cart] ||= {}
   end
end
