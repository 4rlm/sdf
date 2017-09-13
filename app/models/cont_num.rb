class ContNum < ApplicationRecord
  validates :cont_num, uniqueness: true
  has_many :cont_numings

  has_one :cont_naming, as: :cont_namable
  has_one :cont_name, through: :cont_naming

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :act_numing, as: :act_numable #=> testing
  has_one :act_num, through: :act_numing #=> testing

end
