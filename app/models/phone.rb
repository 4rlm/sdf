class Phone < ApplicationRecord
  has_many :phonings
  has_many :act_nums, through: :phonings, source: :phonable, source_type: :ActNum

  validates :phone, uniqueness: true
end
