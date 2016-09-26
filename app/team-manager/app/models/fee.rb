class Fee < ApplicationRecord
  belongs_to :person
  has_one :payment_type
  validates_presence_of :fee_amt
  validates_presence_of :created_on
end
