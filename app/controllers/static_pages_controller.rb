class StaticPagesController < ApplicationController
  def home
    @trip = current_user.trips.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end

end
