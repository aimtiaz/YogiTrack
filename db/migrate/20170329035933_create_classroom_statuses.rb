class CreateClassroomStatuses < ActiveRecord::Migration
  def change
    create_table :classroom_statuses do |t|
      t.string :classroom_status

      t.timestamps null: false
    end
  end
end
