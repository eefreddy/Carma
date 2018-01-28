class TripsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @trip = current_user.trips.build(trip_params)
    if @trip.save
      flash[:success] = "Trip created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def request_ride
    @update_karma_user = User.find(params[:update_karma_user_id])
  end

  def ride_completed
    @update_karma_points = User.find(params[:update_user_points])
    increase = @update_karma_points.karma_points + 1
    @update_karma_points.update_attribute(:karma_points, increase)
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :start_location, :start_latitude, :start_longitude)
  end
end