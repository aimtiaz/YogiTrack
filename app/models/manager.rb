class Manager < ActiveRecord::Base
  has_many :instructors
  has_many :employees
end
