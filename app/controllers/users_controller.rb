class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @trips = @user.trips.paginate(page: params[:page])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Carma"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    curr_loc = params[:user][:current_location]
    current_user.update_attribute(:current_location, curr_loc)
    flash[:success] = "Current Location saved!"
    redirect_to root_url
  end

  def has_karma_points?
    return false if current_user.karma_points.nil? | current_user.karma_points < 1
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_location)
  end
end
