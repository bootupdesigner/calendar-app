json.extract! appointment, :id, :user_id, :start_date, :end_date, :description, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
