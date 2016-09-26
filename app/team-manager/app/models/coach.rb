class Coach < ApplicationRecord
  belongs_to :person
  validates_presence_of :license_num
  validates_presence_of :license_exp
end
