class Classroom < ActiveRecord::Base
  has_many :program_schedules
  has_many :private_lessons
  belongs_to :classroom_status
end
