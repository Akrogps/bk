module Productable
  extend ActiveSupport::Concern

  included do
    has_many :order_lines, as: :productable, dependent: :destroy
  end
end
