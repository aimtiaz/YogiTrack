json.extract! customer, :id, :c_first_name, :c_last_name, :address, :phone, :emergency_phone, :email, :membership_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)