class Order < ApplicationRecord
  ORDER_STATES = ["open", "pending", "confirmed", "delivered"]

  has_many :order_lines, dependent: :destroy

  validates :state, inclusion: { in: ORDER_STATES }, presence: true
  validates :total_price, presence: true
  validates :user, presence: true
end
