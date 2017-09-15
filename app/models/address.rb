class Address < ApplicationRecord
  validates :full, uniqueness: true

  has_many :addressings
  has_many :accounts, through: :addressings, source: :addressable, source_type: :Account
end
