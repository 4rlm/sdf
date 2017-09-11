class Address < ApplicationRecord
  validates :full, uniqueness: true
  has_many :addressings
  has_many :act_nums, through: :addressings, source: :addressable, source_type: :ActNum
end
