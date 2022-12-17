class AddTopicCodeColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :code, :string
  end
end
