class AddTopicLocation < ActiveRecord::Migration[7.0]
  def change
  	add_column :topics, :location, :string
  end
end
