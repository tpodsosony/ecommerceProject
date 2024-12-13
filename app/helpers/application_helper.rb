module ApplicationHelper
    def total_quantity
        session[:cart].values.sum
      end
    
end
