class CompanyInfoController < ApplicationController
  def about
    @about = CompanyInfo.all.first
  end
end
