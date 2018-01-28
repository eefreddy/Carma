class TripsController < ApplicationController

  def current_location
    binding.pry
    @trip = User.new(user_params)
    current_user.trips.create(params["trip"]["destination"])
  end

private
  def trip_params
    params.require(:trip).permit(:destination)
  end

end
