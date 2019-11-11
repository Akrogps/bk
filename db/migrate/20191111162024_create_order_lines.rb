class CreateOrderLines < ActiveRecord::Migration[5.2]
  def change
    create_table :order_lines do |t|
      t.references :order, foreign_key: true
      t.integer :amount_of_products
      t.integer :price
      t.references :productable, polymorphic: true

      t.timestamps
    end
  end
end
