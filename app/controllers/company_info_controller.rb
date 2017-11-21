class CompanyInfoController < ApplicationController
  def about
    @about = CompanyInfo.all.first
    @disable_search = true; 
  end
end
