class PrivateLesson < ActiveRecord::Base
  belongs_to :customer
  belongs_to :instructor
  belongs_to :classroom
end
