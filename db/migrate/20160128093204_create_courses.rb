class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.timestamps null: false

      t.integer :created_by, null: false
      t.integer :updated_by, null: false
    end
  end
end
