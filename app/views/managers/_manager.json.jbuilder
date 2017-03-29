json.extract! manager, :id, :m_first_name, :m_last_name, :address, :phone, :email, :created_at, :updated_at
json.url manager_url(manager, format: :json)