class DeviseCreateTeachers < ActiveRecord::Migration
  def change
    create_table(:teachers) do |t|
      ## Database authenticatable
      t.string :name,               null: false
      t.string :email,              null: false
      t.string :code, null: false
      t.string :avar_url
      t.string :encrypted_password, null: false

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps null: false
    end

    add_index :teachers, :email,                unique: true
    add_index :teachers, :code,                 unique: true
    # add_index :teachers, :unlock_token,         unique: true
  end
end
