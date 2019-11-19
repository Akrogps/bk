class AddPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    add_monetize :books, :unit_price, currency: { present: false }
  end
end
