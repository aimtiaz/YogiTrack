class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :membership_description
      t.string :cost

      t.timestamps null: false
    end
  end
end
