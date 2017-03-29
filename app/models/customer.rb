class Customer < ActiveRecord::Base
  has_many :equipment_checkouts
  has_many :private_lessons
  has_many :program_rosters
  belongs_to :membership
end
