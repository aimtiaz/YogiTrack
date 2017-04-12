class CreateEquipmeents < ActiveRecord::Migration
  def change
    create_table :equipmeents do |t|
      t.string :eq_desc
      t.string :rental_price
      t.integer :equipment_status_id

      t.timestamps null: false
    end
  end
end
