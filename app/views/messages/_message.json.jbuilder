json.extract! message, :id, :message_datetime, :body, :conversation_id, :user_id, :created_at, :updated_at
json.url message_url(message, format: :json)
