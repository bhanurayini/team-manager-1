class PlayerStat < ApplicationRecord
  belongs_to :person
  belongs_to :team
  has_many :stat_record
end
