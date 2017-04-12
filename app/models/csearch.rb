class Csearch < ActiveRecord::Base

  def csearch_customers
    customers = Customer.all

    customers = customers.where(["c_last_name LIKE ?","%#{keywords}%"]) if keywords.present?
    customers = customers.where(["c_first_name LIKE ?", first]) if first.present?
    customers = customers.where(["c_last_name LIKE ?",last]) if last.present?
    customers = customers.where(["phone LIKE ?",phone]) if phone.present?
    customers = customers.where(["email LIKE ?",email]) if email.present?

    return customers
  end
end
