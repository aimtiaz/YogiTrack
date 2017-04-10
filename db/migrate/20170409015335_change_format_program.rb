class ChangeFormatProgram < ActiveRecord::Migration
  def change
    change_column :program_schedules,   :start, :datetime
    change_column :program_schedules,   :end, :datetime
  end
end
