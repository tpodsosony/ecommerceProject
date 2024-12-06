class CheckoutController < ApplicationController

    
    def create
        #Fetch the product in question!
        product = Product.find(params[:product_id])
    end

    def success

    end

    def cancel

    end
end
