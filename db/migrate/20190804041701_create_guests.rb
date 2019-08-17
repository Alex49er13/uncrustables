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
# how to utilize boolean. i.e it needs a column for deleted guests to use 