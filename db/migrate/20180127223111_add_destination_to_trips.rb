class AddDestinationToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :destination, :string
  end
end
