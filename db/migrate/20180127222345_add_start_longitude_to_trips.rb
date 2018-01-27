class AddStartLongitudeToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :start_longitude, :decimal, { precision: 10, scale: 6 }
  end
end
