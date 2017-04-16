class ProgramRoster < ActiveRecord::Base
  belongs_to :customer
  belongs_to :program_schedule


  def class_date
    "#{self.program.program_description} #{self.program_schedule.date}".split.map(&:capitalize).join(' ')
  end
end
