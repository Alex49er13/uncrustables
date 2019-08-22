class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.integer "company_id"
      t.string "first_name"
      t.string "last_name"
      t.boolean :acknowledge_form, :default => false
      t.timestamps
    end
  end
end
