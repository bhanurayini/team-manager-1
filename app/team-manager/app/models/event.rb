class Event < ApplicationRecord
  has_many :organization
  has_many :team
end
