class WideningDataTypes < ActiveRecord::Migration[7.0]
  def change
    change_column :topics, :class_contact, :text
  end
end
