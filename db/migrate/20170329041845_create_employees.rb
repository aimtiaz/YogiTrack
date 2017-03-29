class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :e_first_name
      t.string :e_last_name
      t.text :address
      t.string :phone
      t.string :email
      t.integer :manager_id

      t.timestamps null: false
    end
  end
end
