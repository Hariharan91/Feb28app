json.array!(@comments) do |comment|
  json.extract! comment, :comments, :user_id, :Post_id
  json.url comment_url(comment, format: :json)
end