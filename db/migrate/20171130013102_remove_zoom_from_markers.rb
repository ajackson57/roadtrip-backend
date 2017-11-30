class RemoveZoomFromMarkers < ActiveRecord::Migration[5.0]
  def change
    remove_column :markers, :zoom, :integer
  end
end
