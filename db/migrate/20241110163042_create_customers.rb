class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :country
      t.string :province
      t.string :city
      t.string :zipcode

      t.timestamps
    end
  end
end
