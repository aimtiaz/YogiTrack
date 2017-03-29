class Membership < ActiveRecord::Base
  has_many :customers
end
