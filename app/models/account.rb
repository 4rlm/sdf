class Account < ApplicationRecord
  validates :act_num, uniqueness: true
  has_many :contacts
  # accepts_nested_attributes_for :contacts
  #######################

  has_one :addressing, as: :addressable
  has_one :address, through: :addressing

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :urling, as: :urlable
  has_one :url, through: :urling
  # accepts_nested_attributes_for :url
  # accepts_nested_attributes_for :urling

  # accepts_nested_attributes_for :url, reject_if: :all_blank, allow_destroy: true
  # accepts_nested_attributes_for :contacts, :address, :phones, :url
  # accepts_nested_attributes_for :avatar, allow_destroy: true
end
