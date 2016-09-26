json.extract! player_stat, :id, :jersey_number, :player_bio, :height, :weight, :person_id, :team_id, :created_at, :updated_at
json.url player_stat_url(player_stat, format: :json)