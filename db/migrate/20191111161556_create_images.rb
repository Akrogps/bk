class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :photo
      t.boolean :main
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
