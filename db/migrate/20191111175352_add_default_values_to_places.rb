class AddDefaultValuesToPlaces < ActiveRecord::Migration[5.2]
  def change
    change_column_default :places, :brunch, false
    change_column_default :places, :terrace, false
    change_column_default :places, :monday_night, false
    change_column_default :places, :sunday_night, false
  end
end
