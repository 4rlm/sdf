class Addressing < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  belongs_to :address

  validates :addressable_id, uniqueness: true
  validates :address_id, :uniqueness => { scope: :addressable_id } #=> ALSO IN MIGRATION!
end
