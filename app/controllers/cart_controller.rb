class CartController < ApplicationController
  before_action :get_product, only: %i[create destroy]

  def create

    session[:cart].push(@product.id)
    flash[:notice] = "#{@product.name} Item added to cart"

    Rails.logger.info "Cart contents: #{session[:cart].inspect}"
    Rails.logger.info "Cart class: #{session[:cart].class}" 


    redirect_to root_path
  end

  def destroy
    if session[:cart].include?(@product.id)
      session[:cart].delete_at(session[:cart].index(@product.id) || session[:cart].length)
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
