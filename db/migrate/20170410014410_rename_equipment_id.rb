class RenameEquipmentId < ActiveRecord::Migration
  def change
    rename_column :equipment_checkouts, :equipment_id, :equipmeent_id
  end
end
