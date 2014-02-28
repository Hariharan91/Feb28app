json.array!(@posts) do |post|
  json.extract! post, :Title, :Content, :user_id
  json.url post_url(post, format: :json)
end