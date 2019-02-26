class UsersController < ApplicationController

  def index
    session[:user] = "test"
    @user = User.find_by(u_name: session[:user])
    render json:@user
  end
end
