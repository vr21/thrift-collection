class CompanyInfoController < ApplicationController
  def about
    @categories = Category.all
    @about = CompanyInfo.first
    @disable_search = true;
  end
end
