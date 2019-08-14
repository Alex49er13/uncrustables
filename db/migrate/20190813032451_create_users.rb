class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
      t.boolean :admin, :default => true
      t.timestamps
    end
  end
end
