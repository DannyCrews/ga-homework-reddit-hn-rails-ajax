json.array!(@stories) do |story|
  json.extract! story, :title, :link, :body, :up_votes, :down_votes, :timestamps
  json.url story_url(story, format: :json)
end
