class Product < ApplicationRecord
    belongs_to :catagory

    def self.ransackable_attributes(auth_object = nil)
        ["author", "brand", "catagory_id", "created_at", "description", "id", "id_value", "name", "price", "type", "updated_at"]
      end
end
