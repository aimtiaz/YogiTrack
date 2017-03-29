class Equipment < ActiveRecord::Base
  belongs_to :equipment_status
  has_many :equipment_checkouts
end
