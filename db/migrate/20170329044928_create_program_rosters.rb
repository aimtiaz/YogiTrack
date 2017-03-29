class CreateProgramRosters < ActiveRecord::Migration
  def change
    create_table :program_rosters do |t|
      t.integer :program_schedule_id
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
