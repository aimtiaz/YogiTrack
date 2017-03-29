class CreateEquipmentCheckouts < ActiveRecord::Migration
  def change
    create_table :equipment_checkouts do |t|
      t.integer :equipment_id
      t.date :checkout_date
      t.date :checkin_date
      t.integer :equipment_status_id
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
