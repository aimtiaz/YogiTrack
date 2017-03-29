class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_description
      t.string :rental_price
      t.integer :equipment_status_id

      t.timestamps null: false
    end
  end
end
