json.extract! taco, :id, :name, :type, :tortilla, :cheese, :created_at, :updated_at
json.url taco_url(taco, format: :json)
