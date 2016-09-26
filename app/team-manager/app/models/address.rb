class Address < ApplicationRecord
  has_and_belongs_to_many :people
  validates_presence_of :addr1
  validates_presence_of :addr2
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :country
  validates_presence_of :zip
  validates_presence_of :address_type
end
