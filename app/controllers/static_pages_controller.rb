class StaticPagesController < ApplicationController
  def home
  end

  def rider
  end

  def about
  end

  def driver
    @trip = current_user.trips.build if logged_in?
  end

  def contact
  end

end
