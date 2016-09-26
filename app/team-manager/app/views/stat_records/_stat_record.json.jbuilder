json.extract! stat_record, :id, :record_value, :record_type, :record_date, :references, :created_at, :updated_at
json.url stat_record_url(stat_record, format: :json)