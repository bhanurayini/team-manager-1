json.extract! phone, :id, :phone_number, :phone_type, :created_at, :updated_at
json.url phone_url(phone, format: :json)