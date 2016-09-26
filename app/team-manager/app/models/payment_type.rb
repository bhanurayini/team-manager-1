class PaymentType < ApplicationRecord
  belongs_to :fee
  validates_presence_of :payment_type
end
