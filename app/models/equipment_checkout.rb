class EquipmentCheckout < ActiveRecord::Base
belongs_to :equipmeent
  belongs_to :customer
  has_many :equipment_statuses
end
