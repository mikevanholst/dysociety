json.array!(@sashes) do |sash|
  json.extract! sash, 
  json.url sash_url(sash, format: :json)
end
