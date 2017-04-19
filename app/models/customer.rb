class Customer < ActiveRecord::Base
  has_many :equipment_checkouts
  has_many :private_lessons
  has_many :program_rosters
  belongs_to :membership

  validates_presence_of :c_first_name
  validates_presence_of :c_last_name
  validates_presence_of :birthdate
  validates_presence_of :membership_id
  validates_presence_of :email
  validates_presence_of :phone



  def self.search(search)
    if search
      where(["c_last_name LIKE ?","%#{search}%"])
    else
      all
    end
  end


  def customer_full_name
    "#{self.c_first_name} #{self.c_last_name}".split.map(&:capitalize).join(' ')
  end
end
