class Accounting < ApplicationRecord
  belongs_to :accountable, polymorphic: true
  belongs_to :account

  validates :account_id, :uniqueness => { :scope => [:accountable_type, :accountable_id] } #=> ALSO IN MIGRATION!
end
