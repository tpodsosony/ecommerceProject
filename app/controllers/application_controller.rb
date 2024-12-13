class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :intizialize_session
  helper_method :cart

  before_action :configure_permitted_parameters, if: :devise_controller?


  def intizialize_session
    session[:cart] ||= {}
  end

  def cart
    session[:cart].map do |product_id, quantity|
      product = Product.find_by(id: product_id)
      if product
        { product: product, quantity: quantity } 
      end
    end.compact
  end

  def total_quantity
    session[:cart].values.sum
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end
