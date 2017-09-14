class Account < ApplicationRecord
  validates :act_num, uniqueness: true
  has_many :accountings

  has_many :contacts, through: :accountings, source: :accountable, source_type: :Contact
  # has_many :cont_nums, through: :accountings, source: :accountable, source_type: :Contact
  #################

  has_one :addressing, as: :addressable
  has_one :address, through: :addressing

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :urling, as: :urlable
  has_one :url, through: :urling
end
