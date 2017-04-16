class ChangeTimeFormat < ActiveRecord::Migration
  def change
    change_column :program_schedules, :start, :time
    change_column :program_schedules, :end, :time
  end
end
