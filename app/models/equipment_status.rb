class EquipmentStatus < ActiveRecord::Base
  has_many :equipmeents
  has_many :equipment_checkouts
end
