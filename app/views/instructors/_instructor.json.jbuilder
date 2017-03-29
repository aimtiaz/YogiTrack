json.extract! instructor, :id, :i_first_name, :i_last_name, :address, :phone, :email, :manager_id, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)