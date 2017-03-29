class ProgramSchedule < ActiveRecord::Base
  has_many :program_rosters
  belongs_to :program
  belongs_to :instructor
  belongs_to :classroom
end
