class RemoveStrangeDateColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :topics, :date
  end
end
