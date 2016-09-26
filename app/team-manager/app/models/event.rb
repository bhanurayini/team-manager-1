class Event < ApplicationRecord
  has_many :organization
  has_many :team
  validates_presence_of :event_name
  validates_presence_of :event_type
  validates_presence_of :event_start_time
  validates_presence_of :event_end_time
end
