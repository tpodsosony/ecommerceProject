class CheckoutController < ApplicationController


    def create
        #Fetch the product in question!
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ["card"],
            success_url: checkout_success_url,
            cancel_url: checkout_cancel_url,
            mode: "payment",
            line_items: cart.map do |item| 
                {
                    price_data: {
                        currency: "cad",
                        product_data: {
                            name: item[:product].name,
                            description: item[:product].description,

                        },
                    unit_amount: (item[:product].price * 100).to_i,
                    },
                    quantity: item[:quantity]
                }
            end
        )
        redirect_to @session.url, allow_other_host: true
    end

    def success

    end

    def cancel

    end
end
