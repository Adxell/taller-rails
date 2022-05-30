json.extract! libro, :id, :titulo, :autor, :year, :created_at, :updated_at
json.url libro_url(libro, format: :json)
