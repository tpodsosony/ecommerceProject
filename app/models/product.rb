class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true
    belongs_to :catagory
    has_one_attached :image

    def self.ransackable_attributes(auth_object = nil)
        ["author", "brand", "catagory_id", "created_at", "description", "id", "id_value", "name", "price", "type", "updated_at"]
      end
      scope :with_image, -> { joins(:image_attachment) }

      def self.ransackable_scopes(auth_object = nil)
        %i[with_image]
      end
end
