class EquipmentCheckout < ActiveRecord::Base
belongs_to :equipment
  belongs_to :customer
end