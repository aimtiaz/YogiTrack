class AddAvailabilityToEquipmeent < ActiveRecord::Migration
  def change
    add_column :equipmeents, :availability, :boolean
  end
end
