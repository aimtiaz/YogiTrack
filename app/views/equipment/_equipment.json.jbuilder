json.extract! equipment, :id, :equipment_description, :rental_price, :equipment_status_id, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)