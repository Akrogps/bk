class EditPriceTypeOfBooks < ActiveRecord::Migration[5.2]
  def change
    add_monetize :books, :price_indication, currency: { present: false }
  end
end
