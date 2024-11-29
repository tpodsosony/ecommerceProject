class CartController < ApplicationController
  before_action :get_product, only: %i[create destroy update]

  def create

    if session[:cart].key?(@product.id)
      session[:cart][@product.id] += 1
    else
      session[:cart][@product.id] = 1
    end

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

  def update
    product_id = params[:id] 
    new_quantity = params[:quantity].to_i

    if session[:cart].key?(product_id)
      session[:cart][product_id] = new_quantity if new_quantity > 0
    end

    flash[:notice] = "Cart updated successfully!"

    redirect_to root_path 
  end

  private 

  def get_product
    product_id = params[:id].to_i
    @product = Product.find(product_id)
  end

  def get_quantity
    @quantity = Product.count(@product.id)
  end
end
