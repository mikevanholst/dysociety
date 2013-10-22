json.array!(@allies) do |ally|
  json.extract! ally, :name, :url, :logo, :description
  json.url ally_url(ally, format: :json)
end
