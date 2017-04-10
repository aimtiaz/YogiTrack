class RenameStartEndProgram < ActiveRecord::Migration
  def change
    rename_column :program_schedules, :start_time, :start
    rename_column :program_schedules, :end_time, :end
  end
end
