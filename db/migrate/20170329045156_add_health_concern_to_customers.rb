class AddHealthConcernToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :health_concern, :text
  end
end
