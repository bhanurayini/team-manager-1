class Parent < ApplicationRecord
  belongs_to :person
  has_many :child
end
