class AddDefaultValueToOrderState < ActiveRecord::Migration[5.2]
  def change
    change_column_default :orders, :state, "open"
  end
end
