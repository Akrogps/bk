class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :productable, polymorphic: true

  validates :product_sku, presence: true
  validates :amount_of_products, presence: true
  validates :price, presence: true

  monetize :price_cents

  def total_line_price
    amount_of_products * price
  end
end
