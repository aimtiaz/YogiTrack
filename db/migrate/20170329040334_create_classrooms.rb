class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :classroom_description
      t.integer :classroom_status_id

      t.timestamps null: false
    end
  end
end
