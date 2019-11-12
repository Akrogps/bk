class Book < ApplicationRecord
  include Imageable
  include Productable

  has_many :images

  validates :title, presence: true
  validates :product_sku, presence: true
  validates :unit_price, presence: true
end
