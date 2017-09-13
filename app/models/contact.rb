class Contact < ApplicationRecord
  validates :cont_num, uniqueness: true
  has_many :contactings

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :accounting, as: :accountable
  has_one :act_num, through: :accounting
end
