class AddCoordsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :longitude, :float
    add_column :rooms, :latitude, :float
  end
end
