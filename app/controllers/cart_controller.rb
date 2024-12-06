class CartController < ApplicationController
  before_action :get_product, only: %i[create destroy update]

  def create

    if session[:cart].key?(@product.id.to_s)
      session[:cart][@product.id.to_s] += 1
    else
      session[:cart][@product.id.to_s] = 1
    end

    Rails.logger.info "Cart contents: #{session[:cart].inspect}"
    Rails.logger.info "Cart class: #{session[:cart].class}" 


    redirect_to root_path
  end

  def destroy
    if session[:cart].key?(@product.id.to_s)
      session[:cart].delete(@product.id.to_s)
      flash[:notice] = "#{@product.name} was removed from cart!"
    end

    Rails.logger.info "Cart contents: #{session[:cart].inspect}"
    Rails.logger.info "Cart class: #{session[:cart].class}" 
    redirect_to root_path
  end

  def update
    product_id = params[:id] 
    new_quantity = params[:quantity].to_i

    if session[:cart].key?(product_id)
      session[:cart][product_id] = new_quantity
    end

    Rails.logger.info "Cart contents: #{session[:cart].inspect}"
    Rails.logger.info "Cart class: #{session[:cart].class}" 

    flash[:notice] = "Cart updated successfully!"

    redirect_to root_path 
  end

  private 

  def get_product
    product_id = params[:id].to_i
    @product = Product.find(product_id)
  end
end
