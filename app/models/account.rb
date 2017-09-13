class Account < ApplicationRecord
  validates :act_num, uniqueness: true
  has_many :accountings

  has_one :addressing, as: :addressable
  has_one :address, through: :addressing

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :urling, as: :urlable
  has_one :url, through: :urling

  # has_many :contactings, as: :contactable
  # has_many :cont_nums, through: :contactings
end
