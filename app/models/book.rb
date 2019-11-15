class Book < ApplicationRecord
  include Imageable
  include Productable

  monetize :unit_price_cents

  validates :title, presence: true
  validates :product_sku, presence: true
  validates :unit_price, presence: true
end
