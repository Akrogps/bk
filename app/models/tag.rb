class Tag < ApplicationRecord
  TAGS = ["Restaurant", "Néo-cantine", "Bar", "Café", "Wine Bar"]

  has_many :places_tags, dependent: :destroy
  has_many :places, through: :places_tags

  validates :name, presence: true, inclusion: { in: TAGS }
end
