json.array!(@scorecards) do |scorecard|
  json.extract! scorecard, :total, :chapters, :companies, :level, :books, :shares, :sash_id, :donations
  json.url scorecard_url(scorecard, format: :json)
end
