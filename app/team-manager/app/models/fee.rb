class Fee < ApplicationRecord
  belongs_to :person
  has_one :payment_type
end
