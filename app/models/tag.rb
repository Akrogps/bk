class Tag < ApplicationRecord
  TAGS = ["Restaurant", "Cantine", "Néo-cantine", "Bar", "Café"]

  has_many :places, through: :places_tags

  validates :name, presence: true, inclusion: { in: TAGS }
end
