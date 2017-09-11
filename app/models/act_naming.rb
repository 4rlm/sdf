class ActNaming < ApplicationRecord
  belongs_to :act_namable, polymorphic: true
  belongs_to :act_name

  validates :act_namable_id, uniqueness: true
  validates :act_name_id, :uniqueness => { scope: :act_namable_id } #=> ALSO IN MIGRATION!
end
