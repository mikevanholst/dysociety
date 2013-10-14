json.array!(@blogs) do |blog|
  json.extract! blog, :title, :content, :media, :author, :posted_on, :teaser
  json.url blog_url(blog, format: :json)
end
