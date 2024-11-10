class CreateCarts < ActiveRecord::Migration[7.2]
  def change
    create_table :carts do |t|
      t.integer :product_id
      t.float :total_price
      t.integer :customer_id
      t.integer :order_id

      t.timestamps
    end
  end
end
