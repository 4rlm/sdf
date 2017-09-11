class Urling < ApplicationRecord
  belongs_to :urlable, polymorphic: true
  belongs_to :url

  validates :urlable_id, uniqueness: true
  validates :url_id, :uniqueness => { scope: :urlable_id } #=> ALSO IN MIGRATION!
end
