class AddTypeToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :type, :string
    add_column :products, :name, :string
  end
end
