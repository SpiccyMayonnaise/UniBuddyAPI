class TopicsFieldLengthAgain < ActiveRecord::Migration[7.0]
  def change
    change_column :topics, :topic_number, :string, :limit => 15
  end
end
