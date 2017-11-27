class CreateMarkers < ActiveRecord::Migration[5.0]
  def change
    create_table :markers do |t|
      t.string :name
      t.integer :type
      t.text :description
      t.float :lng
      t.float :lat
      t.text :image_url
      t.text :poi_url

      t.timestamps
    end
  end
end
