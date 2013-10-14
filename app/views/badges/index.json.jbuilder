json.array!(@badges) do |badge|
  json.extract! badge, :name, :kind, :icon, :score, :earned
  json.url badge_url(badge, format: :json)
end
