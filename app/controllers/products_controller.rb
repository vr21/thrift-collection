class ProductsController < ApplicationController
  def index
    @products = Product.order("name").page(params[:page]).per(6)
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @disable_search = true
  end

  def search
    @categories = Category.all
    if params[:categories] != ""
      @result =Product.keyword_search(params[:search_keywords]).where("category_id = ?", params[:categories]).page(params[:page]).per(6)
    else
      @result =Product.keyword_search(params[:search_keywords]).page(params[:page]).per(6)
    end
  end

  def new_products
    @categories = Category.all
    @new = Product.order("created_at DESC")
  end

  def updated_products
    @categories = Category.all
    @updated = Product.order("updated_at DESC")
  end
end
