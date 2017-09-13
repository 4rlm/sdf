class ContNuming < ApplicationRecord
  belongs_to :cont_numable, polymorphic: true
  belongs_to :cont_num
  # belongs_to :act_num #=> testing

  validates :cont_numable_id, uniqueness: true
  validates :cont_num_id, :uniqueness => { scope: :cont_numable_id } #=> ALSO IN MIGRATION!
end
