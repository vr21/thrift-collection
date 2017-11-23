class CategoriesController < ApplicationController
  def category_products
    @categories = Category.all
    @category_products = Product.where(category_id: params[:id])
  end


end
