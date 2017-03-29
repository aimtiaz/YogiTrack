class ProgramRoster < ActiveRecord::Base
  belongs_to :customer
  belongs_to :program_schedule
end
