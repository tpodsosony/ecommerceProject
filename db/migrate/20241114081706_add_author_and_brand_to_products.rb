class AddAuthorAndBrandToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :author, :string
    add_column :products, :brand, :string
  end
end
