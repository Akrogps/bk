class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :address
      t.string :phone_number
      t.string :website
      t.text :opening_hours
      t.string :price_indication
      t.string :booking_link
      t.string :deliveroo_link
      t.boolean :brunch
      t.boolean :terrace
      t.boolean :monday_night
      t.boolean :sunday_night

      t.timestamps
    end
  end
end
