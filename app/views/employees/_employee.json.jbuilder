json.extract! employee, :id, :e_first_name, :e_last_name, :address, :phone, :email, :manager_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)