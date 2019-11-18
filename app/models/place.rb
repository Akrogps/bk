class Place < ApplicationRecord
  BOOLEAN = [true, false]

  include Imageable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :categories_places, dependent: :destroy
  has_many :places_tags, dependent: :destroy
  has_many :categories, through: :categories_places
  has_many :tags, through: :places_tags

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :content, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone_number, format: { with: /\A((((\+|00)32\s?|0)(\d\s?\d{3}|\d{2}\s?\d{2})(\s?\d{2}){2})|((\+|00)32\s?|0)4\s?(60|[789]\d)(\s?\d{2}){3})\z/ }, allow_blank: true
  validates :website, format: { with: /https?:\/\/[\S]+/ }, allow_blank: true
  validates :brunch, inclusion: { in: BOOLEAN }
  validates :terrace, inclusion: { in: BOOLEAN }
  validates :monday_night, inclusion: { in: BOOLEAN }
  validates :sunday_night, inclusion: { in: BOOLEAN }
end
