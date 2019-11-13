class PlacesTag < ApplicationRecord
  belongs_to :place
  belongs_to :tag

  validates :place_id, uniqueness: { scope: :tag_id }
end
