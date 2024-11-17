class CatagoriesController < ApplicationController
  def index
    @categories = Catagory.all
  end

  def show
    @category = Catagory.find(params[:id])
  end
end
