json.extract! event, :id, :event_name, :event_type, :event_start_time, :event_end_time, :created_at, :updated_at
json.url event_url(event, format: :json)