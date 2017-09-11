class ActName < ApplicationRecord
  validates :act_name, uniqueness: true
  has_many :act_namings
  has_many :act_nums, through: :act_namings, source: :act_namable, source_type: :ActNum
end
