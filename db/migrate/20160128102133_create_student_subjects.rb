class CreateStudentSubjects < ActiveRecord::Migration
  def change
    create_table :student_subjects do |t|
      t.references :subject, index: true, foreign_keys: true, null: false
      t.references :student, index: true, foreign_keys: true, null: false

      t.timestamps null: false
    end
  end
end
