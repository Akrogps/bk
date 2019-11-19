class Order < ApplicationRecord
  ORDER_STATES = ["open", "pending", "confirmed", "delivered"]

  has_many :order_lines, dependent: :destroy

  validates :state, inclusion: { in: ORDER_STATES }, presence: true
  validates :price_cents, presence: true
  #validates :user, presence: true

  after_update :sum_total_price

  def sum_total_price
    order_lines.sum(&:total_line_price)
  end
end
