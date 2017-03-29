json.extract! program_roster, :id, :program_schedule_id, :customer_id, :created_at, :updated_at
json.url program_roster_url(program_roster, format: :json)