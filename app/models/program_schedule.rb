class ProgramSchedule < ActiveRecord::Base
  has_many :program_rosters
  belongs_to :program
  belongs_to :instructor
  belongs_to :classroom


  def self.search(search)
    if search
      where(["program_id LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
