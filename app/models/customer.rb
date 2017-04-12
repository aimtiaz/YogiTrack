class Customer < ActiveRecord::Base
  has_many :equipment_checkouts
  has_many :private_lessons
  has_many :program_rosters
  belongs_to :membership

  def self.search(search)
    if search
      where(["c_last_name LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
