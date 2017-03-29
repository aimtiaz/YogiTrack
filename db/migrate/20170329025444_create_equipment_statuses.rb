class CreateEquipmentStatuses < ActiveRecord::Migration
  def change
    create_table :equipment_statuses do |t|
      t.string :equipment_status

      t.timestamps null: false
    end
  end
end
