class RemoveAvailabilty < ActiveRecord::Migration
  def change
    remove_column :equipmeents, :availability
  end
end
