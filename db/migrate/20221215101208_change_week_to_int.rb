class ChangeWeekToInt < ActiveRecord::Migration[7.0]
  def change
    remove_column :term_dates, :week
    add_column :term_dates, :week, :integer
  end
end
