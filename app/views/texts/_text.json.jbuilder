json.extract! text, :id, :title, :content, :user_id, :created_at, :updated_at
json.url text_url(text, format: :json)
