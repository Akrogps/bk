class Image < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :imageable, polymorphic: true

  validates :photo, presence: true
end
