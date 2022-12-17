class CreateClassTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :class_types do |t|
      t.references :topic, index: true
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
