json.array!(@videos) do |video|
  json.extract! video, :title, :teaser, :embed_url, :file_location, :source, :published
  json.url video_url(video, format: :json)
end
