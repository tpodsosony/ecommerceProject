class CreateTrackings < ActiveRecord::Migration[7.2]
  def change
    create_table :trackings do |t|
      t.integer :tracking_num
      t.datetime :expected_date

      t.timestamps
    end
  end
end
