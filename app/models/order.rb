class Order < ApplicationRecord
  STATES = ["open", "pending", "confirmed", "delivered"]

  validates :state, inclusion: { in: STATES }, presence: true
  validates :total_price, presence: true
  validates :user, presence: true
end
