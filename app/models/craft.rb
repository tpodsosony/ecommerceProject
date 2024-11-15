class Craft < Product
    validates :brand, presence: true
    def self.ransackable_associations(auth_object = nil)
        ["catagory"]
      end
      def self.ransackable_attributes(auth_object = nil)
        ["author", "brand", "catagory_id", "created_at", "description", "id", "name", "price", "type", "updated_at"]
      end
end
