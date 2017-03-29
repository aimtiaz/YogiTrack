json.extract! private_lesson, :id, :instructor_id, :customer_id, :date, :time, :cost, :classroom_id, :comments, :created_at, :updated_at
json.url private_lesson_url(private_lesson, format: :json)