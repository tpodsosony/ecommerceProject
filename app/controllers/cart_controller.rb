class CartController < ApplicationController
  before_action :get_product, only: %i[create destroy]

  def create
    unless session[:cart].include?(@product.id)
      session[:cart] << @product.id
      flash[:notice] = "#{@product.name} Item added to cart"
    end


    redirect_to root_path
  end

  def destroy
    if session[:cart].include?(@product.id)
      session[:cart].delete(@product.id)
      flash[:notice] = "#{@product.name} Item was removed from cart!"
    end

    redirect_to root_path
  end

  private 

  def get_product
    product_id = params[:id].to_i
    @product = Product.find(product_id)
  end
end
