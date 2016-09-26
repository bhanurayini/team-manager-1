class Team < ApplicationRecord
  has_many :person
  has_many :manager
  has_many :event
  belongs_to :organization
end
