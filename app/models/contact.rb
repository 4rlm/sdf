class Contact < ApplicationRecord
  belongs_to :account

  validates :full_name, presence: true, case_sensitive: false
  validates_uniqueness_of :cont_num, allow_blank: true, allow_nil: true
  validates_uniqueness_of :full_name, allow_blank: true, allow_nil: true, :scope => [:account_id, :full_name, :email, :job_title], case_sensitive: false

  has_many :phonings, as: :phonable
  has_many :phones, through: :phonings
end
