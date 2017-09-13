class Addressing < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  belongs_to :address

  validates :address_id, :uniqueness => { :scope => [:addressable_type, :addressable_id] } #=> ALSO IN MIGRATION!
end
