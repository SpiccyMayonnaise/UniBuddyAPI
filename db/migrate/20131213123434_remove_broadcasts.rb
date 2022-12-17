class RemoveBroadcasts < ActiveRecord::Migration[7.0]
  def change
    drop_table :broadcasts
  end
end
