class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :productable, polymorphic: true

  validates :product_sku, presence: true
  validates :amount_of_products, presence: true
  validates :price, presence: true
end
