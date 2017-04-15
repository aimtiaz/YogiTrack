class Manager < ActiveRecord::Base
  has_many :instructors
  has_many :employees

  def manager_full_name
    "#{self.m_first_name} #{self.m_last_name}".split.map(&:capitalize).join(' ')
  end
end
