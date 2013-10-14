json.array!(@companies) do |company|
  json.extract! company, :name, :web_address, :description
  json.url company_url(company, format: :json)
end
