class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :intizialize_session
  helper_method :cart

  def intizialize_session
    session[:cart] ||= []
  end

  def cart
    Product.find(session[:cart])
  end

end
