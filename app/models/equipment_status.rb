class EquipmentStatus < ActiveRecord::Base
  has_many :equipmeents
  belongs_to :equipment_checkout
end
