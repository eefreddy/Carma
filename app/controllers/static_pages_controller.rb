class StaticPagesController < ApplicationController
  def home
  end

  def rider
    @user = current_user
    trip_not_me = Trip.where.not(:user_id => current_user.id)
    @trips = trip_not_me.where('created_at >= ?', 2.hours.ago).paginate(page: params[:page])
  end

  def about
    @trip = current_user.trips.build if logged_in?
  end

  def driver
    @trip = current_user.trips.build if logged_in?
  end

  def contact
  end

end
