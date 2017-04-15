class Employee < ActiveRecord::Base
  belongs_to :manager

  def employee_full_name
    "#{self.e_first_name} #{self.e_last_name}".split.map(&:capitalize).join(' ')
  end
end
