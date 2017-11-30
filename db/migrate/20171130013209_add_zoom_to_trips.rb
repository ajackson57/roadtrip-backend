class AddZoomToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :zoom, :integer
  end
end
