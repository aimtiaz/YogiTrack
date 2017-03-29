class CreatePrivateLessons < ActiveRecord::Migration
  def change
    create_table :private_lessons do |t|
      t.integer :instructor_id
      t.integer :customer_id
      t.date :date
      t.time :time
      t.string :cost
      t.integer :classroom_id
      t.text :comments

      t.timestamps null: false
    end
  end
end
