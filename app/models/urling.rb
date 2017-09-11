class Urling < ApplicationRecord
  belongs_to :urlable, polymorphic: true
  belongs_to :url

  validates :url_id, :uniqueness => { :scope => [:urlable_type, :urlable_id] } #=> ALSO IN MIGRATION!
  #OLD# validates :urlable_id, uniqueness: true
  #OLD# validates :url_id, :uniqueness => { scope: :urlable_id } #=> ALSO IN MIGRATION!
end
