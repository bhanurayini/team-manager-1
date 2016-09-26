class TeamHasCoach < ApplicationRecord
  belongs_to :person
  belongs_to :team
  validates_presence_of :coach_type
end
