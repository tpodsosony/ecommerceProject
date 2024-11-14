class AddCatagoryRefToProducts < ActiveRecord::Migration[7.2]
  def change
    add_reference :products, :catagory, null: false, foreign_key: true
  end
end
