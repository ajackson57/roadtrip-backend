class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :type
      t.text :description
      t.float :center_lng
      t.float :center_lat

      t.timestamps
    end
  end
end
