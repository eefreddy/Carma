class AddEndLongitudeToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :end_longitude, :float
  end
end
