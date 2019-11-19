class ChangePriceToOrderLines < ActiveRecord::Migration[5.2]
  def change
    add_monetize :order_lines, :price, currency: { present: false }
  end
end
