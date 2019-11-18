class Order < ApplicationRecord
  ORDER_STATES = ["open", "pending", "confirmed", "delivered"]

  has_many :order_lines, dependent: :destroy

  validates :state, inclusion: { in: ORDER_STATES }, presence: true
  validates :total_price, presence: true
  #validates :user, presence: true

  after_update :sum_prices

  def total_price
    order_lines.sum(&:total_line_price)
  end
end
