class Team < ApplicationRecord
  has_many :person
  has_many :manager
  has_many :event
  belongs_to :organization
  validates_presence_of :team_name
  validates_presence_of :age_group
end
