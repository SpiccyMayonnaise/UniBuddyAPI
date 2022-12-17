class AddUniqueTopicCode < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :unique_topic_code, :string
    add_index  :topics, :unique_topic_code
  end
end
