class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(6)
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

  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    @result = Product.where("name LIKE ?", keywords)
  end
end
