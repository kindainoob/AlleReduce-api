class UsersController < ApplicationController

  def index
    if session[:user] == nil
      redirect_to 'http://www.inatatsu.com/AlleReduce/login.html' and return
    end
    @user = User.find_by(u_name:session[:name])
    render json:@user
  end
end
