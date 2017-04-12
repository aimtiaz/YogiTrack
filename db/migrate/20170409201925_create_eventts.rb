class CreateEventts < ActiveRecord::Migration
  def change
    create_table :eventts do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :text

      t.timestamps null: false
    end
  end
end
