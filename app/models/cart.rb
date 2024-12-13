class Cart < ApplicationRecord
    validates :total_price
    validates :customer_id
end
