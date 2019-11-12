class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.integer :product_sku
      t.integer :total_price
      t.string :user

      t.timestamps
    end
  end
end
