class AddSubscriptToTopic < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :subscript, :string
  end
end
