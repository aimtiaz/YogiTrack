class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :i_first_name
      t.string :i_last_name
      t.text :address
      t.string :phone
      t.string :email
      t.integer :manager_id

      t.timestamps null: false
    end
  end
end
