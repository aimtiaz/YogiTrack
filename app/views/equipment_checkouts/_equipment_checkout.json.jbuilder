json.extract! equipment_checkout, :id, :equipment_id, :checkout_date, :checkin_date, :equipment_status_id, :customer_id, :created_at, :updated_at
json.url equipment_checkout_url(equipment_checkout, format: :json)