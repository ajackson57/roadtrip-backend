class AddZoomToMarkers < ActiveRecord::Migration[5.0]
  def change
    add_column :markers, :zoom, :integer
  end
end
