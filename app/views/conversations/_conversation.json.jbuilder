json.extract! conversation, :id, :datetime_conversation, :title, :datetime_closing_conversation, :conversation_type_id, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)
