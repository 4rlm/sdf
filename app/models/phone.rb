class Phone < ApplicationRecord
  validates :phone, uniqueness: true
  has_many :phonings
  has_many :act_nums, through: :phonings, source: :phonable, source_type: :Account
end
