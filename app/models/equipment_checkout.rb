class EquipmentCheckout < ActiveRecord::Base
belongs_to :equipmeent
  belongs_to :customer
  belongs_to :equipment_status

  def self.checkava
    Equipmeent.where(:equipment_status_id => 1).all?

  end


def self.search(search)
  if search
    where(["customer_id LIKE ?","%#{search}%"])
  else
    all
  end
end
end
