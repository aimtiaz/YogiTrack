class EquipmentCheckout < ActiveRecord::Base
belongs_to :equipmeent
  belongs_to :customer
end
