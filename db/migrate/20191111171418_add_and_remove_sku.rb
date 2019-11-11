class AddAndRemoveSku < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :product_sku
    add_column :books, :product_sku, :string
    add_column :order_lines, :product_sku, :string
  end
end
