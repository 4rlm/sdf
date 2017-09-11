class Phoning < ApplicationRecord
  belongs_to :phonable, polymorphic: true
  belongs_to :phone

  validates :phone_id, :uniqueness => { scope: :phonable_id } #=> ALSO IN MIGRATION!
end
