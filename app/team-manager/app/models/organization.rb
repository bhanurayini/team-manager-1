class Organization < ApplicationRecord
  has_many :team
  has_many :staff
  has_many :event
end
