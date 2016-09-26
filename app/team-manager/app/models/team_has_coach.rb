class TeamHasCoach < ApplicationRecord
  belongs_to :person
  belongs_to :team
end
