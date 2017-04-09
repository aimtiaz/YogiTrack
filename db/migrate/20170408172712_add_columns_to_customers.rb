class AddColumnsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :birthdate, :string
    add_column :customers, :ec_relationship, :string
    add_column :customers, :agree, :boolean
  end
end
