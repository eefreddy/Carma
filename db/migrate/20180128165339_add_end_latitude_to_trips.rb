class AddEndLatitudeToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :end_latitude, :float
  end
end
