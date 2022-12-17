class ChangeEnrolmentClosesToDate < ActiveRecord::Migration[7.0]
  def change
    remove_column :topics, :enrolment_closes
    add_column :topics, :enrolment_closes, :date
  end
end
