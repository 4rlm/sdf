class Contacting < ApplicationRecord
  belongs_to :contactable, polymorphic: true
  belongs_to :contact

  validates :contactable_id, uniqueness: true
  # validates :cont_num_id, :uniqueness => { scope: :cont_numable_id } #=> ALSO IN MIGRATION!
end
