class Person < ApplicationRecord
  has_many :phone
  has_and_belongs_to_many :addresses
  has_many :team
  has_many :fee
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :dob
  validates_presence_of :gender
end
