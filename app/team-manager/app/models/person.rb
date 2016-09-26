class Person < ApplicationRecord
  has_many :phone
  has_and_belongs_to_many :addresses
  has_many :team
  has_many :fee
end
