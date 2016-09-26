class Manager < ApplicationRecord
  belongs_to :person
  has_many :team
end
