class ChangeDateFormatInTable < ActiveRecord::Migration
  def change
    change_column :equipment_checkouts, :checkout_date, :datetime
    change_column :equipment_checkouts, :checkin_date, :datetime
    change_column :private_lessons,     :date, :datetime
    change_column :program_schedules,   :date, :datetime

  end
end
