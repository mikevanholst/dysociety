json.array!(@culsertions) do |culsertion|
  json.extract! culsertion, :title, :content, :tally
  json.url culsertion_url(culsertion, format: :json)
end
