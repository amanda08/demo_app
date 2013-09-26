json.array!(@jobposts) do |jobpost|
  json.extract! jobpost, :content, :user_id
  json.url jobpost_url(jobpost, format: :json)
end