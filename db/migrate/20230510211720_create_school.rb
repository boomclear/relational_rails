class CreateSchool < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.integer :open_classes
      t.string :name
      t.boolean :accepting_new_students

      t.timestamps
    end
  end
end
