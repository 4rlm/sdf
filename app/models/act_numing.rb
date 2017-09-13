class ActNuming < ApplicationRecord
  belongs_to :act_numable, polymorphic: true
  belongs_to :act_num
  # belongs_to :cont_num #=> testing

  validates :act_numable_id, uniqueness: true
  validates :act_num_id, :uniqueness => { scope: :act_numable_id } #=> ALSO IN MIGRATION!
end
