class AddClassSessionRoomColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :class_sessions, :room_id, :integer
    add_index  :class_sessions, :room_id
  end
end