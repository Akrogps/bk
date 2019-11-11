class AddDefaultValueToImages < ActiveRecord::Migration[5.2]
  def change
    change_column_default :images, :main, false
  end
end
