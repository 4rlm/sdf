class Accounting < ApplicationRecord
  belongs_to :accountable, polymorphic: true
  belongs_to :account

  validates :accountable_id, uniqueness: true
  # validates :act_num_id, :uniqueness => { scope: :act_numable_id } #=> ALSO IN MIGRATION!
end
