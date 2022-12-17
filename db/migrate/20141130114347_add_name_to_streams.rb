class AddNameToStreams < ActiveRecord::Migration[7.0]
  def change
    add_column :streams, :name, :string
  end
end
