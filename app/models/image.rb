class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  validates :photo, presence: true
end
