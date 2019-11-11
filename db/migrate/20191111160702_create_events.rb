class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.datetime :event_date
      t.string :address
      t.text :details
      t.string :price_indication
      t.string :state
      t.string :tickets_link

      t.timestamps
    end
  end
end
