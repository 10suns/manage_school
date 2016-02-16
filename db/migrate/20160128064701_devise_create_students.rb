class DeviseCreateStudents < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      ## Database authenticatable
      t.string :name,               null: false
      t.string :email,              default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      # Uncomment below if timestamps were not included in your original model.
      t.timestamps null: false

      t.string :code, null: false, default: ""
    end

    add_index :students, :reset_password_token, unique: true
    add_index :students, :code,                 unique: true
    # add_index :students, :confirmation_token,   unique: true
    # add_index :students, :unlock_token,         unique: true
  end
end
