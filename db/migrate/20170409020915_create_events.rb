class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :program_id
      t.integer :instructor_id
      t.datetime :start
      t.datetime :end
      t.integer :classroom_id
      t.string :size

      t.timestamps null: false
    end
  end
end
