class CreateTeacherSubjects < ActiveRecord::Migration
  def change
    create_table :teacher_subjects do |t|
      t.references :subject, index: true, foreign_keys: true, null: false
      t.references :teacher, index: true, foreign_keys: true, null: false

      t.timestamps null: false
    end
  end
end
