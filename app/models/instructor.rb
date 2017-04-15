class Instructor < ActiveRecord::Base
  has_many :program_schedules
  has_many :private_lessons
  belongs_to :manager

  def instructor_full_name
    "#{self.i_first_name} #{self.i_last_name}".split.map(&:capitalize).join(' ')
  end
end
