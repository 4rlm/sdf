class Phone < ApplicationRecord
  has_many :phonings
  has_many :act_nums, through: :phonings, source: :phonable, source_type: :ActNum
  # has_many :cont_nums, through: :phonings, source: :phonable, source_type: :ContNum

  validates :phone, uniqueness: true
end
