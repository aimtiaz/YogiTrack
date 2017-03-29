class CreateProgramSchedules < ActiveRecord::Migration
  def change
    create_table :program_schedules do |t|
      t.integer :program_id
      t.integer :instructor_id
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :classroom_id
      t.string :class_size

      t.timestamps null: false
    end
  end
end
