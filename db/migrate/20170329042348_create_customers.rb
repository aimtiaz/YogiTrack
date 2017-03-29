class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :c_first_name
      t.string :c_last_name
      t.text :address
      t.string :phone
      t.string :emergency_phone
      t.string :email
      t.integer :membership_id

      t.timestamps null: false
    end
  end
end
