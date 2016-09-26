class Organization < ApplicationRecord
  has_many :team
  has_many :staff
  has_many :event
  validates_presence_of :org_name
end
