class AddUserToMarkers < ActiveRecord::Migration[5.0]
  def change
    add_reference :markers, :user, foreign_key: true
  end
end
