json.array!(@chapters) do |chapter|
  json.extract! chapter, :number, :title, :content, :free
  json.url chapter_url(chapter, format: :json)
end
