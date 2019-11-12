class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = Car.create(userparams)
    render json: user
  end
  private
  def userparams
    params.require(:user).permit(:firstName, :lastName, :email, :password)
  end

end
