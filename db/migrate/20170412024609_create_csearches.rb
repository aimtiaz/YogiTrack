class CreateCsearches < ActiveRecord::Migration
  def change
    create_table :csearches do |t|
      t.string :keywords
      t.string :first
      t.string :last
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
