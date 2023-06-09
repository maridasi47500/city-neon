json.extract! create_place, :id, :user_id, :name, :lat, :lon, :created_at, :updated_at
json.url create_place_url(create_place, format: :json)
