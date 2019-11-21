class RemoveOpeningHoursFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :opening_hours
  end
end
