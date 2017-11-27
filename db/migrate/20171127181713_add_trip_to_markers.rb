class AddTripToMarkers < ActiveRecord::Migration[5.0]
  def change
    add_reference :markers, :trip, foreign_key: true
  end
end
