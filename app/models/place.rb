class Place < ApplicationRecord
  include Imageable

  has_many :categories, through: :categories_places
  has_many :tags, through: :places_tags

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :content, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone_number, format: { with: /^((((\+|00)32\s?|0)(\d\s?\d{3}|\d{2}\s?\d{2})(\s?\d{2}){2})|((\+|00)32\s?|0)4(60|[789]\d)(\s?\d{2}){3})$/ }, allow_blank: true
  validates :website, format: { with: /https?:\/\/[\S]+/ }, allow_blank: true
  validates :brunch, presence: true
  validates :terrace, presence: true
  validates :monday_night, presence: true
  validates :sunday_night, presence: true
end
