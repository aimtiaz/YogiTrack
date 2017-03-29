class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :m_first_name
      t.string :m_last_name
      t.text :address
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
