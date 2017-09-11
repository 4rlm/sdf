class ContNaming < ApplicationRecord
  belongs_to :cont_namable, polymorphic: true
  belongs_to :cont_name

  validates :cont_namable_id, uniqueness: true
  validates :cont_name_id, :uniqueness => { scope: :cont_namable_id } #=> ALSO IN MIGRATION!
end
