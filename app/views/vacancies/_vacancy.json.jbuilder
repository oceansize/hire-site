json.extract! vacancy, :id, :title, :description, :start_date, :salary_min, :salary_max, :location, :bounty, :available_position, :active, :created_at, :updated_at
json.url vacancy_url(vacancy, format: :json)
