class Contact < ApplicationRecord
  belongs_to :account

  # validates :cont_num, uniqueness: true
  # validates :full_name, :uniqueness => { :scope => [:full_name, :cont_num, :email, :job_title] } #=> ALSO IN MIGRATION!

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings
end
