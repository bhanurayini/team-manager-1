json.extract! team, :id, :team_name, :age_group, :wins, :loses, :ties, :team_start, :team_end, :is_archived, :created_at, :updated_at
json.url team_url(team, format: :json)