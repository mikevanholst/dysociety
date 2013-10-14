json.array!(@articles) do |article|
  json.extract! article, :title, :content, :media, :author, :posted_on, :teaser
  json.url article_url(article, format: :json)
end
