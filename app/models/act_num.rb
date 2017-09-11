class ActNum < ApplicationRecord

  has_one :act_naming, as: :act_namable
  has_one :act_name, through: :act_naming
  
  validates :act_num, uniqueness: true
  has_many :act_numings

  has_one :addressing, as: :addressable
  has_one :address, through: :addressing

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :urling, as: :urlable
  has_one :url, through: :urling

  # has_many :cont_numings, as: :cont_numable
  # has_many :cont_nums, through: :cont_numings
end
