class Book < Product
    validates :author, presence: true

    def self.ransackable_attributes(auth_object = nil)
        ["author", "brand", "catagory_id", "created_at", "description", "id", "id_value", "name", "price", "type", "updated_at", "image"]
    end
    def self.ransackable_associations(auth_object = nil)
        ["catagory"]
      end

end
