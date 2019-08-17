class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.datetime "clock_in"
      t.datetime "clock_out"
      t.timestamps 
      t.integer "guest_id"
    end
  end
end
