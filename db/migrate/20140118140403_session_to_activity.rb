class SessionToActivity < ActiveRecord::Migration[7.0]
  def change
    rename_table :class_sessions, :activities
  end
end
