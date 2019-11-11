class PlacesTag < ApplicationRecord
  validates :place, uniqueness: { scope: :tag }
end
