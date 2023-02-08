json.extract! event_member, :id, :event_id, :user_id, :created_at, :updated_at
json.url event_member_url(event_member, format: :json)
