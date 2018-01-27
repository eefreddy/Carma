class AddStartLatitudeToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :start_latitude, :decimal, { precision: 10, scale: 6 }
  end
end
