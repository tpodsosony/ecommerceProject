class CatagoriesController < ApplicationController
  def index
    @categories = Catagory.all
  end

  def show
    @catergory = Catagory.find(params[:id])
  end
end
