json.extract! vote, :id, :user_id, :article_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)
