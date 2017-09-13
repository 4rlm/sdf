class Url < ApplicationRecord
  validates :url, uniqueness: true
  has_many :urlings
  has_many :act_nums, through: :urlings, source: :urlable, source_type: :ActNum
end
