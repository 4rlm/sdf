class ContName < ApplicationRecord
  validates :full_name, uniqueness: true

  has_many :cont_namings
  has_many :cont_nums, through: :cont_namings, source: :cont_namable, source_type: :ContNum
end
