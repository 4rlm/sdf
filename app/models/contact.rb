class Contact < ApplicationRecord
  validates :cont_num, uniqueness: true

  validates :full_name, :uniqueness => { :scope => [:email, :job_title] } #=> ALSO IN MIGRATION!

  # validates :full_name, :uniqueness => { :scope => [:cont_num, :email, :job_title] } #=> ALSO IN MIGRATION!

  has_many :contactings

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings

  has_one :accounting, as: :accountable
  has_one :account, through: :accounting
end
