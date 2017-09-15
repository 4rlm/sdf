## Original ###
class Urling < ApplicationRecord
  belongs_to :url
  belongs_to :urlable, polymorphic: true

  validates :url_id, :uniqueness => { :scope => [:urlable_type, :urlable_id] } #=> ALSO IN MIGRATION!
end
