class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :productable, polymorphic: true
end
