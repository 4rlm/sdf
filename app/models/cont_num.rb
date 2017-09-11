class ContNum < ApplicationRecord
  validates :cont_num, uniqueness: true
  has_many :cont_numings

  has_one :cont_naming, as: :cont_namable
  has_one :cont_name, through: :cont_naming

  has_one :addressing, as: :addressable
  has_one :address, through: :addressing

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :urling, as: :urlable
  has_one :url, through: :urling

  # has_many :act_numings, as: :cont_numable
  # has_many :act_nums, through: :act_numings
end
